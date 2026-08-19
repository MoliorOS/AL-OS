# Ackroyd Lowrie Tech Stack & AI Strategy

## 1. Future Tech Stack: AI-Led Company Brain
The core concept of the future tech stack is a "unified knowledge" system featuring a single interface with swappable AI models [cite: 14].

### Interface & AI Layer
* **Unified Access:** A single screen and one login approach [cite: 16].
* **Primary Model:** Claude Enterprise serves as the initial lead interface to ask questions, run workflows, generate documents/drawings, and search firm knowledge [cite: 16, 17, 18, 19].
* **Flexibility:** Designed to allow swapping AI models later without rebuilding the entire system [cite: 16].
* **Collaboration:** Google Workspace serves as the live co-editing surface [cite: 20].
* **Future Provision:** Includes a designated slot for future AI integration [cite: 21].

### Implementation and Costs
* **Interface Build:** * Initial stage: Start with Claude Team (£8-10k/yr, ready in one week) [cite: 23].
    * Long-term stage: Custom web app build once needs are clear (£15-40k build cost) [cite: 23].
* **Knowledge Indexing:**
    1. Utilize Claude + MOP (Mobile/Online/Portal) connectors [cite: 24].
    2. Integrate Drive + Egnyte into the index [cite: 25].
    3. Add a Vector Database (Pinecone or Chroma) and Llamaindex [cite: 25, 26].
    4. Evaluation of off-the-shelf alternatives like Glean or Gemini Enterprise [cite: 26].
* **Governance and Security:**
    * **Audit Log:** Langfuse or Helicone (recommended at ~£50-200/month) to ensure compliance with PI Insurance, GDPR, and the Building Safety Act [cite: 27, 62].
    * **Identity Management:** JumpCloud for Single Sign-On (SSO) and 1Password for credential management [cite: 60, 61].
* **Efficiency Gains:** Discontinue Zoom in favor of Google Meet and Chat, which are already included in Workspace [cite: 28, 42].

### Data and Knowledge Backbone
* **Central Storage:** Egnyte and Google Workspace operate as a single logical system for storage, governance, and BIM [cite: 29, 31, 37].
* **Knowledge Index:** A semantic search layer across the backbone that turns every document, drawing, email, and bid into AI-readable memory [cite: 48, 49].
* **Data Mirroring:** A CSV mirror of daily exports from CMAP, Xero, and Pipedrive to protect data [cite: 43, 44, 45].
* **Specialist Models:** Gemini and specific Vision/BIM models [cite: 50, 51, 52].

---

## 2. Outputs by Function
Each output is mapped to specific tools within the stack, with the Claude Knowledge Index acting as a thin AI layer for analysis, drafting, and review [cite: 64, 131].

### Finance Outputs
* **Management Accounts:** Produced using Xero (General Ledger), CMAP (project P&L), Claude (commentary), and Google Sheets (board pack) [cite: 73, 74].
* **VAT Returns:** Handled via Xero (MTD direct submission) with Claude performing review and anomaly checks [cite: 75, 76, 77].
* **Payroll:** Managed through BrightHR/payroll bureau, Xero (journaling), and Google Workspace for distribution [cite: 78, 79, 80].
* **Year-End Accounts:** Utilizes Xero (Trial Balance), an external accountant, and Claude for audit pack review [cite: 81, 82].
* **Debt Chasing:** Managed via Xero (aged debt reports), Claude (drafting emails), and Pipedrive (client context) [cite: 83, 84, 85].
* **Profitability Monitoring:** Tracks project margin and utilization using CMAP, Xero, Claude, and Google Sheets [cite: 86, 87, 88].
* **Invoicing:** Uses CMAP (fee schedules), Xero (raising/sending), and Claude (drafting narratives) [cite: 89, 90].

### Operations Outputs
* **Resource Planning:** Capacity vs. demand analysis using CMAP, Claude, and Google Sheets [cite: 102].
* **Project Setup & Onboarding:** Managed through CMAP (project record), Egnyte (folder templates), Pipedrive, and Claude (proposal drafts) [cite: 103, 104].
* **Programme Tracking:** Tracking milestones and deliverables via CMAP, Egnyte, Google Calendar, and Claude [cite: 105, 107].
* **Time Recording:** Timesheet completion and approvals via CMAP, with Claude providing nudges and exception reports [cite: 108, 110].
* **Quality & Document Control:** Drawing issues and reviews using ArchiCAD/BIMCloud, Egnyte, Claude, and Google Workspace [cite: 111, 112, 113].
* **HR & Team Admin:** BrightHR (system of record), Google Workspace (communications), and JumpCloud (provisioning) [cite: 114, 115, 116].
* **H&S/CDM Compliance:** BrightSafe (RA/MS), Egnyte (H&S file), and Claude (checklists) [cite: 117, 118, 119].
* **Insurance Renewals:** Managed through Egnyte (policy register), Claude (renewal calendar), and Google Calendar [cite: 120, 122].

---

## 3. Architecture & Statutory Roles by RIBA Stage
Mapping of services and tools according to RIBA work stages [cite: 139].

### Stage 0-1: Strategic Definition & Preparation
* **Capacity Study:** ArchiCAD and Adobe [cite: 136].

### Stage 2: Concept Design
* **Primary Deliverables:** Feasibility study, Pre-application, Public consultation, and CGI visuals [cite: 147, 151, 153, 154].
* **Tools:** ArchiCAD, Adobe, and 3D visualization tools [cite: 152, 153, 154].
* **Compliance:** Health and safety in design (Stages 2-7) and Pre-construction information [cite: 161, 162, 164].

### Stage 3: Spatial Coordination
* **Primary Deliverables:** Planning submission, Building Regs submission, and Members briefing [cite: 148, 155, 157].
* **Compliance:** Designer risk register (Stages 3-4) and BR compliance plan/matrix (Stages 3-4) [cite: 175, 182, 183].

### Stage 4: Technical Design
* **Primary Deliverables:** Technical design package, Coordinated design package, and Specifications & tender info [cite: 149, 158, 171].
* **Tools:** ArchiCAD and NBS [cite: 149, 171].
* **Compliance:** F10 notification for notifiable projects [cite: 177, 179].

### Stage 5-7: Construction & Handover
* **Primary Deliverables:** Site inspections, Site instructions/RFIs, and Certifications [cite: 150, 156, 172].
* **Compliance:** Health and Safety File (handed over at Stage 6) and Compliance declaration (Stage 6 for HRBs) [cite: 180, 181, 184, 185].
* **Golden Thread:** Change records maintained in Egnyte/Drive (Stages 4-7) [cite: 187, 188, 189].

### Statutory Roles (Principal Designer)
The firm holds two legally distinct roles with separate deliverables [cite: 174, 190]:
* **PD (CDM) 2015:** Manages Health and Safety risk in design [cite: 160, 190].
* **PD (Building Regs) / Building Safety Act 2022:** Ensures design compliance with Building Regulations [cite: 165, 166, 190].

---

## 4. Current vs. Future State

### Current Tech Stack (Today)
* **Siloed Tools:** Point tools used independently by person or task [cite: 212, 213, 215].
* **AI Use:** Fragmented use of Claude, Gemini, and ChatGPT [cite: 216, 222, 223, 247].
* **Communications:** Zoom for meetings, Microsoft Teams for specific clients, and Zoom Messenger [cite: 218, 219, 224, 225].
* **Files:** Parallel systems with Google Workspace and Egnyte (used for BIM/large files) [cite: 221, 226, 227].
* **Design:** ArchiCAD and Adobe Suite [cite: 231, 233].
* **PM & Finance:** Xero pushing data to CMAP via API [cite: 232, 235].
* **HR & Safety:** Outsourced to BrightHR and BrightSafe [cite: 237, 238, 241].

### Observed Weaknesses in Current State
* Tools are siloed with no central layer connecting design, project management, finance, and communications [cite: 245].
* Knowledge is fragmented across Drive, CMAP, Zoom chats, and ArchiCAD files [cite: 246].
* AI is not integrated as a company-wide layer [cite: 247].
