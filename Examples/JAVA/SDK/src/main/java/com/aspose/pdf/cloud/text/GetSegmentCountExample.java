package com.aspose.pdf.cloud.text;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.images.ExtractImageDefaultSizeExample;
import com.aspose.pdf.model.TextItemsResponse;
import com.aspose.storage.api.StorageApi;


public class GetSegmentCountExample {

	public static void main(String[] args) {
		String fileName = "sample-input.pdf";
		int pageNumber = 1;
		int fragmentNumber = 1;
		String withEmpty = "";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(ExtractImageDefaultSizeExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());
		    // Invoke Aspose.PDF Cloud SDK API to get segment count from a pdf fragment
		    TextItemsResponse apiResponse = pdfApi.GetSegments(fileName, pageNumber, fragmentNumber, withEmpty, storage, folder);
		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Segment Count :" + apiResponse.getTextItems().getList().size());
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		    
		}
	}

}