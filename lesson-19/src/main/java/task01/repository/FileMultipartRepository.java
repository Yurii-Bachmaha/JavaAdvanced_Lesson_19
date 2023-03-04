package task01.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import task01.domain.FileMultipart;

public interface FileMultipartRepository extends JpaRepository<FileMultipart, String> {

}