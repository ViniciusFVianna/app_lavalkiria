readme_content = """# Lavalkiria 🧺✨

O **Lavalkiria** é um aplicativo mobile desenvolvido em **Flutter** e **Dart** projetado especificamente para modernizar, simplificar e gerenciar a experiência de clientes em uma lavanderia self-service. Com uma identidade visual marcante e fluxos de onboarding altamente intuitivos, o app coloca o usuário no controle total dos seus ciclos de lavagem e secagem.

---

## 🚀 Funcionalidades Principais

* **Fluxo de Onboarding Fluido:** Apresentação elegante dos benefícios e do conceito do serviço, preparando o cliente para a sua jornada no app.
* **Gestão de Serviços Self-Service:** Visualização clara das opções de ciclos disponíveis (ex: Lavagem Self-Service com maquinário profissional e insumos inclusos).
* **Navegação Sincronizada:** Interface estruturada com `BottomNavigationBar` integrada a um `PageView` e controlada via estado, permitindo navegação fluida tanto por toque quanto por gestos de deslizar (swipe).
* **Validação Rígida de Segurança:** Campos de entrada de senha otimizados e limitados estritamente a 6 dígitos por meio de formatadores nativos (`LengthLimitingTextInputFormatter`), garantindo integridade sem poluidores visuais como contadores de caracteres na tela.
* **Filtros Inteligentes de Entrada:** Inputs numéricos protegidos por máscaras e restrições nativas (`FilteringTextInputFormatter.digitsOnly`) para evitar erros de digitação.

---

## 🎨 Identidade Visual e UI/UX

O design do aplicativo segue as melhores práticas de Usabilidade e Engenharia de Software, utilizando componentes customizados sem bordas rígidas para um visual limpo, moderno e minimalista.

* **Paleta de Cores:** Focada em transmitir limpeza, tecnologia e confiabilidade.
    * Cor Primária: `AppColors.primaryBase`
    * Cores de Apoio/Contraste: `AppColors.darkPrimaryLight`
* **Tipografia e Componentes:** Alinhados com as diretrizes do Material Design 3 e prototipados com foco na experiência do usuário (UX).

---

## 🛠️ Tecnologias Utilizadas

* **Framework:** [Flutter](https://flutter.dev)
* **Linguagem:** [Dart](https://dart.dev)
* **Gerenciamento de Estado/Navegação:** `StatefulWidget`, `PageController` e `ListenableBuilder` / `Listenable.merge`.
* **UI Components:** Material Design 3, Material Symbols (`Symbols.home`, `Symbols.local_laundry_service_rounded`, etc).

---

## ⚙️ Arquitetura e Estrutura de Código

O projeto preza por boas práticas de componentização e desacoplamento:
* **Inputs Customizados:** Campos de texto especializados para senhas e números sem bordas (`InputBorder.none`), encapsulando regras de negócio e validações em tempo de execução.
* **Sincronização de Tela:** Uso eficiente do ciclo de vida de componentes para amarrar a seleção visual do menu inferior ao índice real da página ativa.

---

## 📦 Como Executar o Projeto

1. **Pré-requisitos:** Certifique-se de ter o Flutter SDK instalado e configurado na sua máquina.
2. **Clonar o repositório:**
