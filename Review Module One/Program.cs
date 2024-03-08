using System.Diagnostics.CodeAnalysis;
using System.Reflection.Metadata.Ecma335;
using static System.Collections.Specialized.BitVector32;
using System.Runtime.Intrinsics.X86;

namespace Review_1
{
    internal class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("---------------");
            Console.WriteLine("---------------");
            Console.WriteLine("Radius of circle?");
            double radius = double.Parse(Console.ReadLine());
            double circle = AreaOfCircle(radius);
            Console.WriteLine($"{circle} is the area of the circle");

            Console.WriteLine("base length of triangle?"); ;
            double baseLength = double.Parse(Console.ReadLine());
            Console.WriteLine("height if triangle?");                
            double height = double.Parse(Console.ReadLine());
            double triangle = AreaOfTriangle(baseLength,height);
            Console.WriteLine($"{triangle} is the area of thr triangle");

            Console.WriteLine("Length of rectagle");
            double length = double.Parse(Console.ReadLine());
            Console.WriteLine("Height of rectangle");
            double width = double.Parse(Console.ReadLine());
            double rectangle = AreaOfRectangle(width,height);
            Console.WriteLine($"{rectangle} is the area of the rectangle");

            Console.WriteLine("Side lenght of square");
            double side = double.Parse(Console.ReadLine());
            double square = AreaOfSquare(side);
            Console.WriteLine($"{square} is the area of the square.");

            Console.WriteLine("Choose one of the four shapes to see there area.");
            string shapes = Console.ReadLine();
        }


        // Method for area of circle
        public static double AreaOfCircle(double radius)
        {
            return Math.PI * Math.Pow(radius, 2);
        }


        // Method for area of triangle
        public static double AreaOfTriangle(double baseLength, double height)
        {
            return baseLength * height / 2;
        }

        // Method for area of rectangle
        public static double AreaOfRectangle(double length, double width)
        {
            return length * width;
        }

        // Method for area of square
        public static double AreaOfSquare(double side)
        {

            return Math.Pow(side, 2);

        }




    }
}
