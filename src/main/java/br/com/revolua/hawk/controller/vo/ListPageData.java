package br.com.revolua.hawk.controller.vo;

import java.io.Serializable;

public class ListPageData<T> implements Serializable {

	private static final long serialVersionUID = -6476948512478557559L;

	private FormHeader formHeader;
	private FormContent<T> formContent;

	public FormHeader getFormHeader() {
		return formHeader;
	}

	public void setFormHeader(FormHeader pageHeader) {
		this.formHeader = pageHeader;
	}

	public FormContent<T> getFormContent() {
		return formContent;
	}

	public void setFormContent(FormContent<T> formContent) {
		this.formContent = formContent;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((formContent == null) ? 0 : formContent.hashCode());
		result = prime * result
				+ ((formHeader == null) ? 0 : formHeader.hashCode());
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
		ListPageData other = (ListPageData) obj;
		if (formContent == null) {
			if (other.formContent != null)
				return false;
		} else if (!formContent.equals(other.formContent))
			return false;
		if (formHeader == null) {
			if (other.formHeader != null)
				return false;
		} else if (!formHeader.equals(other.formHeader))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ListPageData [pageHeader=" + formHeader + ", formContent="
				+ formContent + "]";
	}

}
