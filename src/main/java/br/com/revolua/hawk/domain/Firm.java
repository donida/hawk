package br.com.revolua.hawk.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Firm implements Serializable {

	private static final long serialVersionUID = 5142852008169217769L;

	@Id
	@SequenceGenerator(name = "firmIdSeq", sequenceName = "firmIdSeq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "firmIdSeq")
	private Long id;
	@NotNull
	@Size(min = 5, max = 60)
	private String realName;
	@NotNull
	@Size(min = 5, max = 10)
	private String nickName;
	@NotNull
	@Size(min = 5, max = 60)
	private String document;
	@NotNull
	@Size(min = 5, max = 60)
	private String email;
	@ManyToOne
	@NotNull
	private Employee responsible;
	@ManyToOne
	private Phone fone;
	@ManyToOne
	private Address address;
	@OneToMany(mappedBy = "id")
	private List<Employee> employees;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getDocument() {
		return document;
	}

	public void setDocument(String document) {
		this.document = document;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Employee getResponsible() {
		return responsible;
	}

	public void setResponsible(Employee responsible) {
		this.responsible = responsible;
	}

	public Phone getFone() {
		return fone;
	}

	public void setFone(Phone fone) {
		this.fone = fone;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result
				+ ((document == null) ? 0 : document.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result
				+ ((employees == null) ? 0 : employees.hashCode());
		result = prime * result + ((fone == null) ? 0 : fone.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result
				+ ((nickName == null) ? 0 : nickName.hashCode());
		result = prime * result
				+ ((realName == null) ? 0 : realName.hashCode());
		result = prime * result
				+ ((responsible == null) ? 0 : responsible.hashCode());
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
		Firm other = (Firm) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (document == null) {
			if (other.document != null)
				return false;
		} else if (!document.equals(other.document))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (employees == null) {
			if (other.employees != null)
				return false;
		} else if (!employees.equals(other.employees))
			return false;
		if (fone == null) {
			if (other.fone != null)
				return false;
		} else if (!fone.equals(other.fone))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (nickName == null) {
			if (other.nickName != null)
				return false;
		} else if (!nickName.equals(other.nickName))
			return false;
		if (realName == null) {
			if (other.realName != null)
				return false;
		} else if (!realName.equals(other.realName))
			return false;
		if (responsible == null) {
			if (other.responsible != null)
				return false;
		} else if (!responsible.equals(other.responsible))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Firm [id=" + id + ", realName=" + realName + ", nickName="
				+ nickName + ", document=" + document + ", email=" + email
				+ ", responsible=" + responsible + ", fone=" + fone
				+ ", address=" + address + ", employees=" + employees + "]";
	}

}
