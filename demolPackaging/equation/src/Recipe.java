public class Recipe {
    public static void calculator(double a, double b, double c) {
       double x1;
       double x2;
       double delta = b * b - 4 * a * c;
        if (delta < 0) {
            System.out.println("Phương trình vô nghiệm");
        } else if (delta == 0) {
            x1 = - b / (2 * a);
        } else {
            x1 = (-b + Math.sqrt(delta)) / (2*a);
            x2 = (-b - Math.sqrt(delta)) / (2*a);
        }
    }
}
