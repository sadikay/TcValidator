require "tc_validator/version"
require "savon"
require 'active_support/dependencies'

module TcValidator

  def self.check_tc_id(tc_id, name, surname, year)
    client = Savon.client(wsdl: 'https://tckimlik.nvi.gov.tr/Service/KPSPublic.asmx?WSDL')
    begin
      response = client.call(:tc_kimlik_no_dogrula, message: {
                               'TCKimlikNo' => tc_id,
                               'Ad' => name.gsub(/ı/, 'I').gsub(/i/, 'İ').mb_chars.upcase,
                               'Soyad' => surname.gsub(/ı/, 'I').gsub(/i/, 'İ').mb_chars.upcase,
                               'DogumYili' => year.to_s
                             })
     response.body[:tc_kimlik_no_dogrula_response][:tc_kimlik_no_dogrula_result]
   rescue Savon::SOAPFault
    'Invalid TC ID'
   end
  end
end
