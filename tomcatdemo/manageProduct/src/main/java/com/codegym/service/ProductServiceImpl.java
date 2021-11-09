package com.codegym.service;

import com.codegym.model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1,"iphone6", 100, "gray", "Apple" ));
        products.put(2, new Product(2,"iphone7", 200, "rose", "Apple" ));
        products.put(3, new Product(3,"iphone8", 250, "gold", "Apple" ));
        products.put(4, new Product(4,"GalaxyS", 100, "black", "Samsung" ));
        products.put(5, new Product(5,"GalaxyPrime", 100, "white", "Samsung" ));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> listProducts = new ArrayList<>(products.values());
        List<Product> listSearchName = new ArrayList<>();
        name = name.toLowerCase();
        for (Product p: listProducts) {
            if (p.getName().toLowerCase().contains(name)) {
                listSearchName.add(p);
            }
        }
        return listSearchName;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
    products.remove(id);
    }
}
