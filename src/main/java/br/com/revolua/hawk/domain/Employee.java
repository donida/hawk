package br.com.revolua.hawk.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.codehaus.jackson.annotate.JsonIgnore;

@Entity
public class Employee implements Serializable {

	private static final long serialVersionUID = -7690882066796961424L;

	@Id
	@SequenceGenerator(name = "employeeIdSeq", sequenceName = "employeeIdSeq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "employeeIdSeq")
	private Long id;
	@NotNull
	@Size(min=5, max=500)
	private String name;
	@NotNull
	@Size(min=5, max=60)
	private String email;
	@NotNull
	@Size(min=5, max=60)
	private String document;
	@ManyToOne
	@JoinColumn(name = "cell", referencedColumnName = "id")
	private Phone cell;
	@ManyToOne
	@JoinColumn(name = "comercial", referencedColumnName = "id")
	private Phone commercial;
	@ManyToOne
	@JoinColumn(name = "home", referencedColumnName = "id")
	private Phone home;
	@ManyToOne
	private Address address;
	@ManyToOne
	@NotNull
	private Firm firm;
	@ManyToOne
	private User user;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDocument() {
		return document;
	}

	public void setDocument(String document) {
		this.document = document;
	}

	public Phone getCell() {
		return cell;
	}

	public void setCell(Phone cell) {
		this.cell = cell;
	}

	public Phone getCommercial() {
		return commercial;
	}

	public void setCommercial(Phone commercial) {
		this.commercial = commercial;
	}

	public Phone getHome() {
		return home;
	}

	public void setHome(Phone home) {
		this.home = home;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Firm getFirm() {
		return firm;
	}

	public void setFirm(Firm firm) {
		this.firm = firm;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((cell == null) ? 0 : cell.hashCode());
		result = prime * result
				+ ((commercial == null) ? 0 : commercial.hashCode());
		result = prime * result
				+ ((document == null) ? 0 : document.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((firm == null) ? 0 : firm.hashCode());
		result = prime * result + ((home == null) ? 0 : home.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
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
		Employee other = (Employee) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (cell == null) {
			if (other.cell != null)
				return false;
		} else if (!cell.equals(other.cell))
			return false;
		if (commercial == null) {
			if (other.commercial != null)
				return false;
		} else if (!commercial.equals(other.commercial))
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
		if (firm == null) {
			if (other.firm != null)
				return false;
		} else if (!firm.equals(other.firm))
			return false;
		if (home == null) {
			if (other.home != null)
				return false;
		} else if (!home.equals(other.home))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (user == null) {
			if (other.user != null)
				return false;
		} else if (!user.equals(other.user))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", email=" + email
				+ ", document=" + document + ", cell=" + cell + ", commercial="
				+ commercial + ", home=" + home + ", address=" + address
				+ ", firm=" + firm + ", user=" + user + "]";
	}

}
