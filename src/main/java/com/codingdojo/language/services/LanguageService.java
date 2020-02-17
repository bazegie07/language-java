package com.codingdojo.language.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.language.models.Languages;
import com.codingdojo.language.repositories.LanguageRepository;

@Service
public class LanguageService {
	private final LanguageRepository languageRepository;
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	
	
	//return all languages
	public List<Languages> allLanguages(){
		return languageRepository.findAll();
	}
	
	//create a lang
	public Languages createLanguage(Languages lang) {
		return languageRepository.save(lang);
	}

	// find a lang by id
	public Languages findLang(Long id) {
		Optional<Languages> optionalLang = languageRepository.findById(id);
		if(optionalLang.isPresent()) {
			return optionalLang.get();
		}else {
			return null;
		}
	}
	
	//delete lang by id
	public void deleteLanguage(Long id) {
		Optional<Languages> lang = languageRepository.findById(id);
		if(lang.isPresent()) {
			languageRepository.deleteById(id);
		}
	}
	
	

}
