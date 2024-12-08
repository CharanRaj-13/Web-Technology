import java.io.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import org.xml.sax.*;
public class parsing{
    public static void main(String[] args) {
        try {
            System.out.println("Enter the xml document file name : ");
            BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
            String file_name = input.readLine();
            File fp = new File(file_name);
            if(fp.exists()){
                try{
                    DocumentBuilderFactory factory_obj = DocumentBuilderFactory.newInstance();
                    DocumentBuilder builder = factory_obj.newDocumentBuilder();
                    InputSource ip_src = new InputSource(file_name);
                    Document doc = builder.parse(ip_src);
                    System.out.println(file_name + " is well-formed");
                } catch (Exception e) {
                    System.out.println(file_name + " is not well-formed");
                    System.exit(1);
                }
            }
            else{
                System.out.println(file_name +" does not exist");
            }
        }
        catch(Exception e){
            System.out.println(e);
        }

    }
}