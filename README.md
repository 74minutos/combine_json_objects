# Combine Objects Template

This template is designed to combine different objects into one using Google Tag Manager Server Side.

## Terms of Service

By creating or modifying this file you agree to Google Tag Manager's Community Template Gallery Developer Terms of Service available at [Google Tag Manager TOS](https://developers.google.com/tag-manager/gallery-tos) (or such other URL as Google may provide), as modified from time to time.

## Template Information

- **Type**: MACRO
- **ID**: cvt_temp_public_id
- **Version**: 1
- **Security Groups**: []
- **Display Name**: Combine Objects
- **Description**: A template to combine different objects into one
- **Container Contexts**: SERVER

## Template Parameters

### Objects to be transformed

- **Type**: SIMPLE_TABLE
- **Name**: objects
- **Display Name**: Objects to be transformed
- **Simple Table Columns**:
  - **Name**: object
  - **Type**: TEXT
  - **Default Value**: ""
  - **Display Name**: Name

## JavaScript Functionality

The template includes a sandboxed JavaScript function for the server side. It imports necessary modules from GTM Server Side and defines a function to combine multiple objects into one.

### Functionality Explanation

The JavaScript function works as follows:
1. It retrieves the list of objects from the template parameters.
2. It iterates over each object in the list.
3. For each object, it checks if it is a valid JSON string.
4. If valid, it parses the JSON string into an object.
5. It combines all parsed objects into a single object.
6. The combined object is then returned as the output.

This allows you to input multiple JSON objects and get a single combined object as the result.
