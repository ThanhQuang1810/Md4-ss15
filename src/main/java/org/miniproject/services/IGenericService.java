package org.miniproject.services;

import java.util.List;

public interface IGenericService <T, E>{
    void save(T t);
    void update(T t);
    void delete(E id);
    T findById(E id);
    List<T> findAll();
}
