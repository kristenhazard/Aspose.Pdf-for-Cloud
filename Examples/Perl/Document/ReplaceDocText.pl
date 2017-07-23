#ExStart:1
use lib 'lib';
use strict;
use warnings;
use utf8;
use File::Slurp; # From CPAN
use JSON;
use AsposePdfCloud::Object::TextReplace;

use AsposeStorageCloud::StorageApi;
use AsposeStorageCloud::ApiClient;
use AsposeStorageCloud::Configuration;

use AsposePdfCloud::PdfApi;
use AsposePdfCloud::ApiClient;
use AsposePdfCloud::Configuration;
use AsposePdfCloud::Object::Rectangle;
use AsposePdfCloud::Object::Signature;

my $configFile = '../config/config.json';
my $configPropsText = read_file($configFile);
my $configProps = decode_json($configPropsText);
my $data_path = '../../../Data/';
my $out_path = $configProps->{'out_folder'};

$AsposePdfCloud::Configuration::app_sid = $configProps->{'app_sid'};
$AsposePdfCloud::Configuration::api_key = $configProps->{'api_key'};
$AsposePdfCloud::Configuration::debug = 1;

$AsposeStorageCloud::Configuration::app_sid = $configProps->{'app_sid'};
$AsposeStorageCloud::Configuration::api_key = $configProps->{'api_key'};

# Instantiate Aspose.Storage and Aspose.Pdf API SDK
my $storageApi = AsposeStorageCloud::StorageApi->new();
my $pdfApi = AsposePdfCloud::PdfApi->new();

# Set input file name
my $name =  'sample-input.pdf';
my @textReplaceBody = AsposePdfCloud::Object::TextReplace->new('OldValue' => 'Sample PDF', 'NewValue' => 'Sample Aspose PDF');

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);

# Invoke Aspose.PDF Cloud SDK API to replace pdf text                                           
$response = $pdfApi->PostDocumentReplaceText(name=>$name, body=>@textReplaceBody);

if($response->{'Status'} eq 'OK'){	
	my $output_file = $out_path. $name;
	$response = $storageApi->GetDownload(Path => $name);
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}
#ExEnd:1