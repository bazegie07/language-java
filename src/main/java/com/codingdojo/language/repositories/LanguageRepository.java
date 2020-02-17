package com.codingdojo.language.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.language.models.Languages;

@Repository
public interface LanguageRepository extends CrudRepository<Languages, Long> {
	List<Languages> findAll();
}
