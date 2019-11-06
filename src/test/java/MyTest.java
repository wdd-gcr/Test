import com.baizhi.Application;
import com.baizhi.entity.Admin;
import com.baizhi.entity.Supplier;
import com.baizhi.service.AdminService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = Application.class)
public class MyTest {
    @Autowired
    private AdminService service;
    @Test
    public void test1(){
        Admin admin = new Admin();
        admin.setName("admin");
        admin.setPassword("admin");
        try {
//            service.login(admin);
        }catch (Exception e){
            String message = e.getMessage();
            System.out.println(message);
        }
    }
    @Test
    public void test2(){
        List<Supplier> list = service.queryCount(1, 3);
        for (Supplier supplier : list) {
            System.out.println(supplier);
        }
    }
    @Test
    public void test3(){
        List<Supplier> list = service.queryLike("负责人", "李");
        for (Supplier supplier : list) {
            System.out.println(supplier);
        }
    }
}
