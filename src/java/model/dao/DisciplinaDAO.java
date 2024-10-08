/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.Area;
import model.bean.Disciplina;

/**
 *
 * @author aluno
 */
public class DisciplinaDAO {

    public List<Disciplina> lerDisciplinas() { // Método que retorna uma lista de objetos Disciplina
        List<Disciplina> lista = new ArrayList(); // Cria uma nova lista para armazenar as disciplinas
        try {
            Connection conn = Conexao.conectar(); // Estabelece uma conexão com o banco de dados
            PreparedStatement stmt = null; // Declara uma variável para o PreparedStatement
            ResultSet rs = null; // Declara uma variável para armazenar o resultado da consulta

            // Prepara a consulta SQL para selecionar os dados das disciplinas e suas áreas associadas
            stmt = conn.prepareStatement("SELECT dis.id_disciplina, dis.nome_disciplina,\n"
                    + "area.id_area AS id_area, area.nome AS nome_area,\n"
                    + "area.descricao AS descricao_area\n"
                    + "FROM disciplina AS dis\n"
                    + "INNER JOIN area ON dis.fk_id_area = area.id_area;");

            // Executa a consulta e armazena o resultado em rs
            rs = stmt.executeQuery();

            // Itera sobre cada linha do resultado da consulta
            while (rs.next()) {
                Disciplina dis = new Disciplina(); // Cria uma nova instância de Disciplina

                // Preenche os atributos da disciplina com os dados retornados da consulta
                dis.setId_disciplina(rs.getInt("id_disciplina")); // Define o ID da disciplina
                dis.setNome_disciplina(rs.getString("nome_disciplina")); // Define o nome da disciplina

                // Início do objeto Area
                Area area = new Area(); // Cria uma nova instância de Area
                area.setId(rs.getInt("id_area")); // Define o ID da área
                area.setNome(rs.getString("nome_area")); // Define o nome da área
                area.setDescricao(rs.getString("descricao_area")); // Define a descrição da área

                // Associa a área ao objeto disciplina
                dis.setArea(area);

                // Adiciona a disciplina preenchida à lista
                lista.add(dis);
            }
        } catch (SQLException e) { // Captura qualquer SQLException que possa ocorrer durante a execução
            e.printStackTrace(); // Imprime a pilha de erros para diagnóstico
        }
        return lista; // Retorna a lista de disciplinas
    }
    
    
    public Disciplina lerDisciplina() { // Método que retorna uma lista de objetos Disciplina
        Disciplina dis = new Disciplina(); // Cria uma nova lista para armazenar as disciplinas
        try {
            Connection conn = Conexao.conectar(); // Estabelece uma conexão com o banco de dados
            PreparedStatement stmt = null; // Declara uma variável para o PreparedStatement
            ResultSet rs = null; // Declara uma variável para armazenar o resultado da consulta

            // Prepara a consulta SQL para selecionar os dados das disciplinas e suas áreas associadas
            stmt = conn.prepareStatement("SELECT dis.id_disciplina, dis.nome_disciplina,\n"
                    + "area.id_area AS id_area, area.nome AS nome_area,\n"
                    + "area.descricao AS descricao_area\n"
                    + "FROM disciplina AS dis\n"
                    + "INNER JOIN area ON dis.fk_id_area = area.id_area where dis.id_disciplina = 8;");

            // Executa a consulta e armazena o resultado em rs
            rs = stmt.executeQuery();

            // Itera sobre cada linha do resultado da consulta
            if (rs.next()) {

                // Preenche os atributos da disciplina com os dados retornados da consulta
                dis.setId_disciplina(rs.getInt("id_disciplina")); // Define o ID da disciplina
                dis.setNome_disciplina(rs.getString("nome_disciplina")); // Define o nome da disciplina

                // Início do objeto Area
                Area area = new Area(); // Cria uma nova instância de Area
                area.setId(rs.getInt("id_area")); // Define o ID da área
                area.setNome(rs.getString("nome_area")); // Define o nome da área
                area.setDescricao(rs.getString("descricao_area")); // Define a descrição da área

                // Associa a área ao objeto disciplina
                dis.setArea(area);

            }
            
        } catch (SQLException e) { // Captura qualquer SQLException que possa ocorrer durante a execução
            e.printStackTrace(); // Imprime a pilha de erros para diagnóstico
        }
        return dis; // Retorna a lista de disciplinas
    }

    public Disciplina disciplinaEspecifica(int id){
        Disciplina dis = new Disciplina();
        try{
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
           
            stmt = conexao.prepareStatement("SELECT dis.id_disciplina, dis.nome_disciplina,\n"
                    + "area.id_area AS id_area, area.nome AS nome_area,\n"
                    + "area.descricao AS descricao_area\n"
                    + "FROM disciplina AS dis\n"
                    + "INNER JOIN area ON dis.fk_id_area = area.id_area "
                    + "WHERE dis.id_disciplina = ?");
            stmt.setInt(1, id);
           
            rs = stmt.executeQuery();
           
            if (rs.next()) {

                // Preenche os atributos da disciplina com os dados retornados da consulta
                dis.setId_disciplina(rs.getInt("id_disciplina")); // Define o ID da disciplina
                dis.setNome_disciplina(rs.getString("nome_disciplina")); // Define o nome da disciplina

                // Início do objeto Area
                Area area = new Area(); // Cria uma nova instância de Area
                area.setId(rs.getInt("id")); // Define o ID da área
                area.setNome(rs.getString("nome")); // Define o nome da área
                area.setDescricao(rs.getString("descricao_area")); // Define a descrição da área

                // Associa a área ao objeto disciplina
                dis.setArea(area);

            }
           
            rs.close();
            stmt.close();
            conexao.close();
           
        }catch(SQLException e){
            e.printStackTrace();
        }
        return dis;
       
    }
}
