# object-and-array-builder
template.tpl is Google Tag Manager custom variable template.  
Using this template, you can use other variables to create variables that are organized as arrays or object types.  
Primarily intended for use in generating parameters for dynamic remarketing ad tags. Dynamic remarketing ad tags require an array, such as a product ID.

## Main functions
- Create four types of variables:
  - Object
    - By specifying a combination of "Key" and "Value", it becomes an object type variable. You can specify another variable as the "Value".
  - Array object
    - Reference the properties of another array object variable and create an array object variable with a different key.
  - Array
    - Creates a one-level array type variable with the specified value combination.
      - When connecting array variables, you can also expand and connect.
      - Setting sample: ["var1", "var2", "var3", "Array"]
      - Output sample: ["var1", "var2", "var3", ["Array1", "Array2", "Array3"]] or ["var1", "var2", "var3", "Array1", "Array2", "Array3"]
    - You can also extract the value of the specified property as an array from an array object type variable.
      - Input array: [{key_a: 'var_a1', key_b: 'var_b1'}, {key_a: 'var_a2', key_b: 'var_b2'}]
      - Extract property: "key_a" => Output: ['var_a1', 'var_a2']
  - Array array
    - Create an array object variable that references the properties of another array object variable and extracts only the values.
- Options:
  - If the specified value is not found, you can select Do Nothing, Ignore Lines, or Convert To Another String.
    - For Array objects, you can also select "Use the entered property name as a string."

## Main use cases
Useful when:
- You want to use data as a parameter with a different name, such as a different ad tag, on a page where the data has already been output for another use.

## Editing history
### [2024/06/04 (Update)] Ayudante, Inc.
- Bug fixed.
  - Fixed a problem in which values were not generated correctly when "Array" or "Object" was selected.

### [2024/05/21 (Update)] Ayudante, Inc.
- Bug fixed.
  - Fixed a bug that caused an error if the target variable did not exist when "Array + Object" or "Array + Array" was selected.

### [2020/02/04 (New)] Ayudante, Inc. 
- Initial release.
