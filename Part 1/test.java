import java.util.Random;

public class test
{
    public static void main(){
        int length = 100;
        System.out.println(password(length));
    }
    
    static String password(int l){
        String Generated = "";
        String Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*-,.<>1234567890!@#$%^&*-,.<>";
        String[] generate = Alphabet.split("");
        
        Random rand = new Random();
        for(int i=0;i<l;i++){
            int n = rand.nextInt(generate.length);
            Generated = Generated + generate[n];
        }
        return Generated;
    }
}
