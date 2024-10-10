// lambda_function.js

exports.lambda_handler = async (event) => {
    return {
        statusCode: 200,
        body: JSON.stringify('Hello, Prathamesh!')
    };
};
