package fr.runadium.springboot.todo;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "todos", collectionResourceRel = "todos")
public interface TodoDataRestRepository extends PagingAndSortingRepository<Todo, Long> {

}
