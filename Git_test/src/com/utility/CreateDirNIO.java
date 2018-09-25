package com.utility;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
public class CreateDirNIO {

	public static void main(String[] args) {
		Path path = Paths.get("C:\\JavaNIO");
		
		if(Files.exists(path)){
			try {
				Files.createDirectories(path);
				System.out.println("Created");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
