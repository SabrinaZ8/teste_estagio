<template>
  <div class="container">
    <h1>Buscar Operadoras</h1>
    <input v-model="query" placeholder="Digite um query..." @keyup.enter="buscar" />
    <button @click="buscar">Buscar</button>

    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Registro_ANS</th>
          <th>CNPJ</th>
          <th>Razao_Social</th>
          <th>Nome_Fantasia</th>
          <th>Modalidade</th>
          <th>Logradouro</th>
          <th>Numero</th>
          <th>Complemento</th>
          <th>Bairro</th>
          <th>Cidade</th>
          <th>UF</th>
          <th>CEP</th>
          <th>DDD</th>
          <th>Telefone</th>
          <th>Fax</th>
          <th>Endereco_eletronico</th>
          <th>Representante</th>
          <th>Cargo_Representante</th>
          <th>Regiao_de_Comercializacao</th>
          <th>Data_Registro_ANS</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(item, index) in resultados" :key="index">
          <td>{{ index }}</td>
          <td>{{ item.Registro_ANS }}</td>
          <td>{{ item.CNPJ }}</td>
          <td>{{ item.Razao_Social }}</td>
          <td>{{ item.Nome_Fantasia }}</td>
          <td>{{ item.Modalidade }}</td>
          <td>{{ item.Logradouro }}</td>
          <td>{{ item.Numero }}</td>
          <td>{{ item.Complemento }}</td>
          <td>{{ item.Bairro }}</td>
          <td>{{ item.Cidade }}</td>
          <td>{{ item.UF }}</td>
          <td>{{ item.CEP }}</td>
          <td>{{ item.DDD }}</td>
          <td>{{ item.Telefone }}</td>
          <td>{{ item.Fax }}</td>
          <td>{{ item.Endereco_eletronico }}</td>
          <td>{{ item.Representante }}</td>
          <td>{{ item.Cargo_Representante }}</td>
          <td>{{ item.Regiao_de_Comercializacao }}</td>
          <td>{{ item.Data_Registro_ANS }}</td>
        </tr>
      </tbody>
    </table>
    <p>Nenhum resultado encontrado.</p>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      query: '',
      resultados: []
    };
  },
  methods: {
    async buscar() {
      if (this.query.trim() === '') return;
      try {
        const response = await axios.get(`http://127.0.0.1:5000/buscar`, {
          params: {
            query: this.query,
            limit: 10
          }
        });
        
        this.resultados = response.data
      } catch (error) {
        console.error("Erro ao buscar operadoras", error);
      }
    }
  }
};
</script>

<style>
.container {
  max-width: 400px;
  margin: auto;
  text-align: center;
}

input {
  width: 80%;
  padding: 8px;
  margin-bottom: 10px;
}

button {
  padding: 8px 12px;
}
</style>