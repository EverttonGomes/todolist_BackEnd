package br.com.evertongomes.todolist.task;

import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;


public interface ITaskRepository extends JpaRepository<TaskModal, UUID>{
    List<TaskModal> findByIdUser(UUID idUser);
}
