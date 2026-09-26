package br.unitins.tp2.repository;

import br.unitins.tp2.model.Pessoa;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PessoaRepository implements PanacheRepository<Pessoa> {

    public Pessoa findByCpf(String cpf) {
        return find("cpf", cpf).firstResult();
    }

    public Pessoa findByCpfExceptId(String cpf, Long idPessoa) {
        if (idPessoa == null) {
            return findByCpf(cpf);
        }

        return find("cpf = ?1 and id <> ?2", cpf, idPessoa).firstResult();
    }

    public Pessoa findByEmailExceptId(String email, Long idPessoa) {
        if (idPessoa == null) {
            return find("email", email).firstResult();
        }

        return find("email = ?1 and id <> ?2", email, idPessoa).firstResult();
    }
}