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
        "plugin:@typescript-eslint/recommended",
        "prettier",
        "plugin:prettier/recommended"
    ],
    root: true,
    rules: {
        "react/jsx-filename-extension": [0],
        "import/extensions": "off",
        "import/no-extraneous-dependencies": "off",
        "@typescript-eslint/no-var-requires": "off",
        "@typescript-eslint/no-unused-vars": "off",
        "@typescript-eslint/ban-types": "warn"
    },
    settings: {
        "import/resolver": {
            node: {
                extensions: [".js", ".jsx", ".ts", ".tsx"]
            }
        }
    }
};