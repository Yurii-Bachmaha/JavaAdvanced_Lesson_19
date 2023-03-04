package task01.controller;

import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import task01.domain.FileMultipart;
import task01.dto.MultipartUploadResponse;
import task01.service.FileMultipartService;

@RestController
public class FileController {

	@Autowired
	FileMultipartService fileMultipartService;

	@PostMapping("/uploadFile")
	public MultipartUploadResponse uploadFile(@RequestParam("file") MultipartFile file, HttpServletRequest req)throws IOException {
		FileMultipart fileMultipart = fileMultipartService.storeFile(file);
		req.setAttribute("file", fileMultipart);
		String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath().path("/downloadFile/").path(fileMultipart.getId()).toUriString();
		
		return new MultipartUploadResponse(fileMultipart.getFileName(), fileDownloadUri, file.getContentType(),file.getSize());
	}

	@GetMapping("/save")
	public String getFile(@RequestParam String id, HttpServletRequest req) throws FileNotFoundException {
		req.setAttribute("files", fileMultipartService.getFile(id));
		
		return "cabinet";
	}

	@GetMapping("/downloadFile/{fileId}")
	public ResponseEntity<Resource> downlaodFile(@PathVariable String fileId, HttpServletRequest req) throws FileNotFoundException {
		FileMultipart fileMultipart = fileMultipartService.getFile(fileId);
		req.setAttribute("file", fileMultipart);
		
		return ResponseEntity.ok().contentType(MediaType.parseMediaType(fileMultipart.getFileType()))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + fileMultipart.getFileName() + "\"")
				.body(new ByteArrayResource(fileMultipart.getData()));
	}

}