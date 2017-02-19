require 'aspose_pdf_cloud'

class Text

  include AsposePDFCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @pdf_api = PdfApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Read document text items.
  def read_document_text_items
    file_name = "Sample-Annotation.pdf"
    upload_file(file_name)

    response = @pdf_api.get_text_items(file_name)
  end

end

text_obj = Text.new()
puts text_obj.read_document_text_items