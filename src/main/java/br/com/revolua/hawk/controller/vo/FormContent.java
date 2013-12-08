package br.com.revolua.hawk.controller.vo;

import java.io.Serializable;
import java.util.List;

public class FormContent<T> implements Serializable {

	private static final long serialVersionUID = -824250610273682918L;

	private T domain;
	private List<T> searchResult;

	public T getDomain() {
		return domain;
	}

	public void setDomain(T domain) {
		this.domain = domain;
	}

	public List<T> getSearchResult() {
		return searchResult;
	}

	public void setSearchResult(List<T> searchResult) {
		this.searchResult = searchResult;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((domain == null) ? 0 : domain.hashCode());
		result = prime * result
				+ ((searchResult == null) ? 0 : searchResult.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		@SuppressWarnings("rawtypes")
		FormContent other = (FormContent) obj;
		if (domain == null) {
			if (other.domain != null)
				return false;
		} else if (!domain.equals(other.domain))
			return false;
		if (searchResult == null) {
			if (other.searchResult != null)
				return false;
		} else if (!searchResult.equals(other.searchResult))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "FormContent [domain=" + domain + ", searchResult="
				+ searchResult + "]";
	}

}
