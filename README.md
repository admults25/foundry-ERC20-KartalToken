# ERC20 Token Deployment with Foundry

## Proje Açıklaması
Bu proje, Ethereum Sepolia testnet'inde bir ERC20 token'ı deploy etmek için Foundry kullanılarak geliştirilmiş bir örnektir. OpenZeppelin kütüphanesi kullanılarak, minting ve burning özelliklerine sahip bir ERC20 token'ı oluşturulmuştur.

## Özellikler
- ERC20 Token standardına uygun
- Minting ve burning özellikleri
- Foundry ile testnet'te deploy ve doğrulama

## Gereksinimler
- Foundry
- Node.js
- OpenZeppelin Contracts
- Alchemy RPC URL'si

## Kurulum
1. **Depoyu Klonlayın**
    ```bash
    git clone https://github.com/admults25/Foundry-fundMe.git
    cd Foundry-fundMe
    ```
2. **Gerekli Bağımlılıkları Kurun**
    ```bash
    forge install
    ```
3. **Ortam Değişkenlerini Ayarlayın**
   Bir `.env` dosyası oluşturun ve Alchemy RPC URL'si ve Etherscan API anahtarınızı ekleyin:
    ```env
    PRIVATE_KEY=your_private_key_here
    ETHERSCAN_API_KEY=your_etherscan_api_key_here
    ```
4. **Kontratı Deploy Edin**
    ```bash
    forge script script/DeployERC20.s.sol --rpc-url https://eth-sepolia.g.alchemy.com/v2/rPzgNb6Fae2yctxj_wPoEoN1W6mI7EG7 --private-key $PRIVATE_KEY --broadcast --verify
    ```
5. **Kontratı Doğrulayın**
   Eğer doğrulama sırasında API anahtarınız ile ilgili sorun yaşıyorsanız, manuel doğrulama yapabilirsiniz. API anahtarınızı doğru bir şekilde aldığınızdan emin olun ve Etherscan’ın web arayüzünü kullanarak doğrulama işlemini gerçekleştirin.

## Proje Yapısı
- `src/ERC20Token.sol`: ERC20 token'ının akıllı kontrat kodu.
- `script/DeployERC20.s.sol`: Kontratı deploy etmek için kullanılan Foundry scripti.
- `foundry.toml`: Foundry konfigürasyon dosyası.

## Lisans
Bu proje MIT Lisansı altında lisanslanmıştır.
