package br.com.revolua.hawk.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Phone implements Serializable {

	private static final long serialVersionUID = -4125332122344276032L;

	public enum TYPE {
		COMMERCIAL, RESIDENTIAL, CELLPHONE
	}

	@Id
	@SequenceGenerator(name = "phoneIdSeq", sequenceName = "phoneIdSeq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "phoneIdSeq")
	private Long id;
	@Enumerated(EnumType.STRING)
	@NotNull
	private TYPE type;
	@NotNull
	@Size(min=2, max=2)
	private Integer countryArea;
	@NotNull
	@Size(min=2, max=2)
	private Integer localArea;
	@NotNull
	@Size(min=8, max=9)
	private Integer number;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public TYPE getType() {
		return type;
	}

	public void setType(TYPE type) {
		this.type = type;
	}

	public Integer getCountryArea() {
		return countryArea;
	}

	public void setCountryArea(Integer countryArea) {
		this.countryArea = countryArea;
	}

	public Integer getLocalArea() {
		return localArea;
	}

	public void setLocalArea(Integer localArea) {
		this.localArea = localArea;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((countryArea == null) ? 0 : countryArea.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result
				+ ((localArea == null) ? 0 : localArea.hashCode());
		result = prime * result + ((number == null) ? 0 : number.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
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
		Phone other = (Phone) obj;
		if (countryArea == null) {
			if (other.countryArea != null)
				return false;
		} else if (!countryArea.equals(other.countryArea))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (localArea == null) {
			if (other.localArea != null)
				return false;
		} else if (!localArea.equals(other.localArea))
			return false;
		if (number == null) {
			if (other.number != null)
				return false;
		} else if (!number.equals(other.number))
			return false;
		if (type != other.type)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Phone [id=" + id + ", type=" + type + ", countryArea="
				+ countryArea + ", localArea=" + localArea + ", number="
				+ number + "]";
	}

}
