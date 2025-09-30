# 🛍️ Store App

Aplicação Flutter que simula uma loja virtual com carrinho de compras, seleção de produtos, animações deslizantes e tela de pagamento.

## 📲 Funcionalidades

- Adicionar e remover itens do carrinho
- Selecionar produtos individualmente para pagamento
- Swipe para ações com `Slidable`
- Gestão de estado com `Provider`
- Navegação inferior com `GoogleNavBar`

---

## 🧰 Requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) versão **3.7.2** ou superior
- Android Studio / VS Code com extensões Flutter & Dart
- Emulador Android/iOS ou dispositivo físico

---

## 📦 Dependências utilizadas

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  google_nav_bar: ^5.0.6
  provider: ^6.0.5
  flutter_slidable: ^3.0.0

  assets:
   - lib/images/
  ```

No terminal Windows podes instalar as dependencias com
```bash
flutter pub get
```

## Estrutura do Projeto
```
store_app/
│
├── lib/
│   ├── components/
│   │   └── cart_item.dart      # Widget visual de cada produto no carrinho
│   ├── models/
│   │   ├── shoe.dart           # Modelo de dados de um produto
│   │   └── cart.dart           # Provider com lógica de carrinho
│   ├── pages/
│   │   ├── cart_page.dart      # Página principal do carrinho
│   │   └── payment_page.dart   # Página de pagamento
│   └── main.dart               # Entrada principal da aplicação
│
└── lib/images/                 # Imagens usadas nos produtos
```

## Recursos visuais
```
flutter:
  assets:
    - lib/images/
```

