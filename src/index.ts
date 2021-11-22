const Caver = require("caver-js");
const dotenv = require("dotenv");
const path = require("path");

dotenv.config({ path: path.join(__dirname, "../../.env") });

class DeployContract {
    accessKeyId: string;
    secretAccessKey: string;
    walletAddress: string;
    caver = new Caver;
    
    constructor() {
        this.accessKeyId = process.env.ACCESS_KEY;
        this.secretAccessKey = process.env.SECRETE_KEY;
        this.walletAddress = process.env.WALLET_ADDRESS;
        const options = {
            headers: [
                {
                    name: "Authorization",
                    value:
                        "Basic " +
                        Buffer.from(
                            this.accessKeyId + ":" + this.secretAccessKey
                        ).toString("base64"),
                },
                { name: "x-chain-id", value: "8217" },
            ],
        };
        const httpProvider = new Caver.providers.HttpProvider(
            process.env.KLAYTN_END_POINT,
            options
        );
        this.caver = new Caver(httpProvider);
    }
    async deploy(): Promise<{}> {
        const kip17Instance = this.caver.klay.KIP17;
        const tokenInfo = {
            name: process.env.TOKEN_NAME,
            symbol: process.env.TOKEN_SYMBOL,
        }
        const result = await kip17Instance.deploy(tokenInfo, this.walletAddress)
        return result;
    }
}