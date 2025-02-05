import BaseEntity from './base.entity';

export default class PJEntity extends BaseEntity {
  name: string;
  stars: number; // Para "Estrelas"
  cnpj: string;
  phone: string;
  cep: string;
  street: string; // Logradouro
  number: string;
  state: string; // UF
  city: string;
  neighborhood: string; // Bairro
  complement: string; // Complemento
  profile_picture: string; // Caminho ou URL da foto de perfil
  user_id: string;

  constructor(data: PJEntity) {
    super(data.id || '');
    this.user_id = data.user_id;
    this.name = data.name;
    this.stars = data.stars;
    this.cnpj = data.cnpj;
    this.phone = data.phone;
    this.cep = data.cep;
    this.street = data.street;
    this.number = data.number;
    this.state = data.state;
    this.city = data.city;
    this.neighborhood = data.neighborhood;
    this.complement = data.complement;
    this.profile_picture = data.profile_picture;
  }
}
