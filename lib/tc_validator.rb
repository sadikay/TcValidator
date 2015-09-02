require 'tc_validator/version'
require 'savon'
require 'active_support/dependencies'

class String
  def replace_and_upcase
    gsub(/ı|i/, 'ı' => 'I', 'i' => 'İ').mb_chars.upcase
  end
end

module TcValidator
  def self.check_tc_id(tc_id, name, surname, year)
    client = Savon.client(wsdl: 'https://tckimlik.nvi.gov.tr/Service/KPSPublic.asmx?WSDL')
    begin
      response = client.call(:tc_kimlik_no_dogrula, message: {
                                                    'TCKimlikNo' => tc_id,
                                                    'Ad' => name.replace_and_upcase,
                                                    'Soyad' => surname.replace_and_upcase,
                                                    'DogumYili' => year
                                                  })
      response.body[:tc_kimlik_no_dogrula_response][:tc_kimlik_no_dogrula_result]
    rescue Savon::SOAPFault
      'Invalid TC NO'
    end
  end
end
