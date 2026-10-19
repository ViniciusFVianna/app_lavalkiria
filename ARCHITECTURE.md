# 🏗️ Proposta de Arquitetura - La Valkiria

Este documento apresenta a proposta formal de arquitetura para o desenvolvimento do aplicativo La Valkiria, visando escalabilidade, manutenibilidade e testabilidade.

## 🎯 Objetivos da Arquitetura
1.  **Independência de Framework:** A lógica de negócio deve ser isolada da UI.
2.  **Modularização:** Facilitar o trabalho simultâneo de múltiplos desenvolvedores.
3.  **Testabilidade:** Permitir testes unitários simples em camadas de lógica pura.
4.  **Consistência Visual:** Centralização da UI no Design System.

---

## 🏛️ Estrutura Proposta (Inspired by Clean Architecture)

A aplicação será dividida em três pilares fundamentais de responsabilidade:

### 1. Camada `app` (Core & Infra)
O "coração" técnico do app. Não contém regras de negócio, mas sim a infraestrutura necessária para o app rodar.
*   **Navigation:** Gerenciamento centralizado de rotas (`go_router`).
*   **Utils:** Ferramentas transversais (ex: padrão `Command` para reatividade).
*   **Setup:** Injeção de dependências e inicializações globais.

### 2. Camada `design_system` (UI Library)
Uma biblioteca interna de componentes puramente visuais.
*   **Princípio:** Nenhum componente desta camada deve acessar Controllers ou Repositories.
*   **Organização:** Baseada em Atomic Design (Atoms, Molecules, Design Tokens).
*   **Assets:** Centralização de ícones, imagens e temas.

### 3. Camada `presenter` (Features/Domínios)
Onde o produto ganha vida, organizada por contextos de negócio (ex: `auth`, `home`, `orders`).
Cada funcionalidade deve seguir a estrutura:
*   **Page:** View (Widgets).
*   **Controller:** Lógica de estado e interação (ViewModel).
*   **Routes:** Definição local de rotas da feature.
*   **Widgets:** Componentes específicos que não são globais o suficiente para o Design System.

---

## 🔄 Fluxo de Estado e Comunicação

### Padrão `Command`
Para evitar `setState` globais e reconstruções desnecessárias, propõe-se o uso do padrão **Command**:
*   O Controller expõe objetos `Command<T>`.
*   A View escuta alterações via `ListenableBuilder`.
*   **Benefício:** Reatividade granular e clara intenção de ação.

### Navegação
*   Utilização de **Rotas Nomeadas** e descentralizadas.
*   Cada funcionalidade registra suas próprias rotas, que são injetadas no roteador principal.

---

## 📂 Hierarquia de Pastas Sugerida

```text
lib/
├── app/                # Infraestrutura e Core
├── design_system/      # Componentes Visuais Reutilizáveis
├── presenter/          # Funcionalidades (Features)
│   ├── [feature_name]/
│   │   ├── page/       # UI
│   │   ├── controller/ # Estado/Lógica
│   │   ├── routes/     # Navegação da Feature
│   │   └── widgets/    # Componentes Locais
└── main.dart           # Bootstrap
```

---

## 🚀 Próximos Passos para Evolução
*   **Data Layer:** Implementação de Repositories e DataSources para abstração de APIs.
*   **Dependency Injection:** Padronização do uso de um Service Locator (ex: GetIt) para desacoplar as camadas.
