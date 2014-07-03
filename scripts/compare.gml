///compare(number,COMPARE_SIGN,number)
/***************************************************
  Useage:
    nothing too special, just recreates math checks in a modular format.
 ***************************************************/
/*var num1, num2, sgn;
num1 = real(argument0)
num2 = real(argument2)
sgn = string(argument1)
switch sgn
{
    case COMPARE_EQUALS: case "==": return (num1 == num2);
    case COMPARE_GT: case ">": return (num1 > num2);
    case COMPARE_LT: case "<": return (num1 < num2);
    case COMPARE_NOTEQUALS: case "!=": return (num1 != num2);
    case COMPARE_GTEQUALS: case ">=": return (num1 >= num2);
    case COMPARE_LTEQUALS: case "<=": return (num1 <= num2);
}
