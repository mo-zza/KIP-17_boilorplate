module.exports = {
    parser: "@typescript-eslint/parser",
    parserOptions: {
        project: "./tsconfig.json"
    },
    env: {
        node: true,
        jest: true,
    },
    plugins: ["@typescript-eslint/eslint-plugin"],
    extends: [
        "airbnb-typescript",
        "plugin:@typescript-eslint/recommended",
        "prettier",
        "plugin:prettier/recommended"
    ],
    root: true,
    rules: {
        "react/jsx-filename-extension": [0],
        "import/extensions": "off",
        "import/no-extraneous-dependencies": "off"
    },
    settings: {
        "import/resolver": {
            node: {
                extensions: [".js", ".jsx", ".ts", ".tsx"]
            }
        }
    }
};