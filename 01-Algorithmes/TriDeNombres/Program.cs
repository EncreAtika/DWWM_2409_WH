using System;

namespace TriDeNombres
{
    internal class Program
    {
        static void Main(string[] args)
        {
         int A;
         int B;
         int C;

            Console.WriteLine("Bonjour, Veuillez saisire le nombre A : ");
            A = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("A = " + A );
           
            Console.WriteLine("Veuillez saisir le nombre B : ");
            B = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("B = " + B);
           
            Console.WriteLine("Veuillez saisir le nombre C : ");
            C = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("C = " + C);
       
        if (A<B && B<C)  {
            Console.WriteLine("Voici vos nombres dans l'ordre croissant : " + A + " " + B + " " + C );
        }

        else if (A<C && C<B){
            Console.WriteLine("Voici vos nombres dans l'ordre croissant : " + A + " " + C + " " + B);
        }
        
         else if (B<A && A<C){
            Console.WriteLine("Voici vos nombres dans l'ordre croissant : " + B + " " + A + " " + C);
        }

         else if (B<C && C<A){
            Console.WriteLine("Voici vos nombres dans l'ordre croissant : " + B + " " + C + " " + A);
        }

         else if (C<B && B<A){
            Console.WriteLine("Voici vos nombres dans l'ordre croissant : " + C + " " + B + " " + A);
        }

         else if (C<A && A<B){
            Console.WriteLine("Voici vos nombres dans l'ordre croissant : " + C + " " + A + " " + B);
        }
        
         }
    }
} 
