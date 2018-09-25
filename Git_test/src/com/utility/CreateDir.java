package com.utility;

import java.io.File;

public class CreateDir {

	public static void main(String[] args) {
		File file = new File("C:\\JavaTest");
		File files = new File("C:\\javaMulDir\\subFolder");
		
		if(!file.exists()){
			if(file.mkdir()){
				System.out.println("Created");
			}else{
				System.out.println("Not Created");
			}
		}
		
		if(!files.exists()){
			if(files.mkdirs()){
				System.out.println("Multiple dir created");
			}else{
				System.out.println("Failed");
			}
		}

	}

}
