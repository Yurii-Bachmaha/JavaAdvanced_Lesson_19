package task01.service;

import java.io.FileNotFoundException;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import task01.domain.FileMultipart;
import task01.repository.FileMultipartRepository;

@Service
public class FileMultipartService {

	@Autowired
	private FileMultipartRepository repo;

	public FileMultipart storeFile(MultipartFile file) throws IOException {
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		FileMultipart multipart = null;

		if (!fileName.contains("..")) {
			multipart = new FileMultipart(fileName, file.getContentType(), file.getBytes());
		}
		return repo.save(multipart);
	}

	public FileMultipart getFile(String fileId) throws FileNotFoundException {
		return repo.findById(fileId).orElseThrow(() -> new FileNotFoundException("No file found with id: =" + fileId));
	}

}