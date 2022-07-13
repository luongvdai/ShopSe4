/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Account;
import entity.Product;
import entity.Type;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP
 */
public class DAO extends MyDAO {

    public List<Product> getAllProduct() {
        String query = "select * from Product";
        try {
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Type> getAllType() {
        String query = "select * from Category";
        try {
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Type> list = new ArrayList<>();
            while (rs.next()) {
                Type t = new Type(rs.getInt(1),
                        rs.getString(2));
                list.add(t);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllProductByName(String name) {
        String query = "select * from Product where Pname like ?";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
                list.add(p);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public Account getAccount(String user, String password) {
        String query = "select * from Account where [user] = ? and password = ?";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
                return a;
            }
        } catch (Exception e) {
        }

        return null;
    }

    public Product getProductByID(int id) {
        String query = "select * from product where Pid = ?";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
                return p;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllProductByLoai(int id_loai) {
        String query = "select * from product where C_ID = ?";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, id_loai);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
                list.add(p);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public Account CheckUserExits(String user) {
        String query = "select * from Account where [user] = ?";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Account> getAllAccount() {
        String query = "select * from Account";
        try {
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Account> list = new ArrayList<>();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
                list.add(a);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public void SignUp(int id, String user, String password, String name) {
        String query = "insert into Account values (?,?,?,?,0)";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, user);
            ps.setString(3, password);
            ps.setString(4, name);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
        }
    }

    public void deleteProduct(int id) {
        String query = "delete from Product where Pid=?";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void updateProduct(Product p) {
        String query = "Update Product set [Pname]=?,[C_ID]=?,[price]=?,[description]=?,[image]=? where Pid = ?";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, p.getName());
            ps.setInt(2, p.getCid());
            ps.setFloat(3, p.getPrice());
            ps.setString(4, p.getDescription());
            ps.setString(5, p.getImage());
            ps.setInt(6, p.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void InsertProduct(Product p) {
        String query = "insert into product values (?,?,?,?,?,?,?)";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, p.getId());
            ps.setString(2, p.getName());
            ps.setInt(3, p.getCid());
            ps.setFloat(4, p.getPrice());
            ps.setString(5, p.getDescription());
            ps.setString(6, p.getImage());
            ps.setInt(7, p.getNumber());
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void BuyCart(int Uid, int Pid, int number, float price) {
        String query = "insert into Cart values (?,?,?,?)";
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1, Uid);
            ps.setInt(2, Pid);
            ps.setInt(3, number);
            ps.setFloat(4, price);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
