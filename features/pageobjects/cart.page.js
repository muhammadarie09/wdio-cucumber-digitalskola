import Page from "./page";
import {$, expect} from "@wdio/globals"

class CartPage extends Page{

    get checkoutButton() {
        return $("#continue-shopping")
    }
    get continueShoppingButton() {
        return $("#checkout")
    }

    async validateOnCartPage() {
        await expect(this.checkoutButton).toBeExisting();
        await expect(this.continueShoppingButton).toBeExisting();
    }

    open(){
        return super.open("")
    }
}

export default new CartPage();
