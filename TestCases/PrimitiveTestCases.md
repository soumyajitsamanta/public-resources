# Introduction:

Test cases and the data to use in them ideally should cover
all scenarios but that is sometimes not the case.
In unit test cases mostly valid data is used to test which
in rare cases miss the real world unpredictable cases.
This table given below is to help us explore these cases.

In case of valid data (VV*) the developer has good idea of
what to put. But in case of invalid data (IV*) there is
a chance that we might miss cases like for integer value
parameter in function the maximum possible integer value
(m-int) and minimum possible integer value (mn-int) may 
cause overflow or problems. Which in most cases are not 
handled due to unnecessary code addition. But if the input 
is coming from the user or database then we might have a 
mismatch in the range the database can handle for that 
datatype and the range the language can handle for that 
datatype.

For this reason a simple table to refer to and use for
data can remind us of test cases or edge cases we might
miss. It is not all inclusive but at least most common
mistakes can be caught. Invalid Value (IV*) is dependent
on the scenario and needs to be decided by the developer,
a general rule would be to consider all contraints an
object might have and then all data or cases which exlude
one or more constraints can be used. Invalid data generation
is an excercise left to developer beyond what is given here, 
due to the scope of topics and situations about it.

# Legend:

VV* : Valid Values.

IV* : Invalid Values.

null : null or equivalent for that language.

obj : object of any type or just empty default object like ({} in JS).

int : Integer.

m-int : Maximum integer value possible.

mn-int : Minimum integer value possible.

NaN : NaN of JS or its equivalent in other languages.

float : Floating point number or its equivalent.

m-float : Maximum floating point value possible.

mn-float : Minimum floating point value possible.

m-p-float : Maximum floating point's precision value possible.

m-e-float : Maximum floating point's exponent value possible.

mn-p-float : Minimum floating point's precision value possible.

mn-e-float : Minimum floating point's exponent value possible.

long : Integer value bigger than int and stored in long or big integer primitive or its equivalent.

m-long : Maximum long value.

mn-long : Minimum long value.


# For Arrays:

- Null as the value of list : var list = null
- Null as only element(s) of list : var list = \[ null \]
- Valid values with null element: var list = \[ VV1, null, VV2 \]
- Valid values with duplicate element: var list = \[ VV1, VV1 \]
- List containing wrong data type : var list:string\[\] = \[ int, float, long, obj, null \]

# For Object
- Null as value : var objRef = null
- Valid value : var objRef = VV1
- Invalid value : var objRef = IV1

# For Function Parameters:
## For int/long value parameters:
- Null in case of dynamic typed languages : func(null)
- Any invalid datat type in case of dynamic typed languages : func(IV1)
- Negative Integer for positive integer accepting function: func(-int)
- Minimum Negative Integer for positive integer accepting function : func(mn-int)
- Positive Integer for negative integer accepting function: func(int)
- Maximum Negative Integer for negative integer accepting function : func(m-int)
- NaN value : func(NaN)
- Zero value: func(0)

## For float/double value parameters:
- Null in case of dynamic typed languages : func(null)
- Any invalid datat type in case of dynamic typed languages : func(IV1)
- Negative Integer for positive integer accepting function: func(-float)
- Minimum Negative Integer for positive integer accepting function : func(mn-float)
- Positive Integer for negative integer accepting function: func(float)
- Maximum Negative Integer for negative integer accepting function : func(m-float)
- NaN value : func(NaN)
- Zero value: func(0)
- In case the function assumes a precision anything smaller precision : func(float)

## For string value parameters:
- Null if allowed : function(null)
- Empty String : func("")
- Any invalid datat type in case of dynamic typed languages : func(IV1)
- Expecting ASCII characters only use string in other encoding : func(\x99)
- Expecting x length string use longer string : func("Huge paragraph of text in name...")
- Expecting fixed length of x characters : func("Anything longer than x")
- Expecting fixed length of x characters : func("Anything smaller than x")
