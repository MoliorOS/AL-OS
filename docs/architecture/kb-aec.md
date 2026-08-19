Help me think, i want to build a knowldge base for a 30 person aec firm. I want to build a similar system to dorsey world model. What is the best alproach?
If your goal is to build something inspired by Jack Dorsey's "world model," I would avoid thinking of it as a traditional knowledge base. Instead, think of it as a living organizational memory that an AI can reason over.
For a 30-person AEC (Architecture, Engineering, Construction) firm, your biggest problem isn't storing documents—it's preserving why decisions were made, who knows what, and how projects evolved.
I'd structure it as five layers.
Layer 1: Raw Memory (Everything)
Every source of information is ingested.
Google Drive / SharePoint
BIM models
CAD files
PDFs
Contracts
RFIs
Meeting recordings
Emails
Slack/Teams
Photos
Site reports
Specifications
Code books
Internal SOPs
Nothing is manually organized.
Everything becomes searchable.
Layer 2: Semantic Objects
Instead of documents, think in terms of objects.
Examples:
Project
Client
Building
Room
Floor
Drawing
Detail
Material
Product
Engineer
Architect
Meeting
Decision
Issue
Permit
Vendor
Regulation
Inspection
Change Order
Every document gets connected to these objects.
Instead of:
"Here's the PDF"

The AI knows
Project A
→ Mechanical room
→ AHU 3
→ Meeting on May 5
→ Decision to relocate duct
→ Drawing revision
→ RFI 27
→ Cost increase
This is far closer to a world model.
Layer 3: Timeline
Every object has a history.
Example
Building
↓
Concept
↓
Schematic Design
↓
Design Development
↓
Construction Documents
↓
Bid
↓
Construction
↓
Closeout
Every decision is attached to a moment.
This becomes incredibly valuable.
Layer 4: Knowledge Extraction
This is where AI continuously creates higher-level knowledge.
Examples
Meeting
↓
Action Items
Decisions
Risks
Questions
Owners
Deadlines
Project
↓
Lessons Learned
Common Problems
Repeated RFIs
Most delayed disciplines
Most expensive revisions
Material
↓
Pros
Cons
Past failures
Supplier history
Cost trends
The AI isn't storing text.
It's building knowledge.
Layer 5: World Model
Now you have a graph.
Project
contains
Buildings
contain
Rooms
contain
Systems
contain
Equipment
built by
Contractors
approved by
Engineer
discussed in
Meetings
affected by
RFIs
linked to
Specifications
linked to
Codes
linked to
Lessons Learned
At this point the AI can reason.
Not retrieve.
Reason.
The most important addition: Decisions
Most firms lose decisions.
Every meeting should generate:
Decision
Reason
Alternatives considered
Who approved
Confidence
Risks
Expected outcome
Later:
Did it work?
This creates organizational intelligence.
Expertise Graph
Also build a graph of people.
Instead of an org chart.
Jane
Expertise
HVAC
Hospitals
ASHRAE
Energy modeling
AutoCAD MEP
Revit Families
Project X
Project Y
The AI learns who knows what.
AEC-specific Knowledge
Separate permanent knowledge from project knowledge.
Permanent
Building codes
Engineering standards
Internal standards
Detail library
Material library
Product catalog
Design guidelines
Project
Drawings
RFIs
Meeting notes
Photos
Models
Emails
These should never mix.
Continuous Learning
Every night:
Ingest new documents.
Extract entities.
Update the graph.
Detect new decisions.
Summarize changes.
Update expertise.
Find contradictions.
Generate lessons learned.
Exactly like a world model continuously updating itself.
Architecture
Given what you've been designing with Hermes and your multi-agent system, I'd use a pipeline like this:
Sources
    │
    ▼
Ingestion Agents
    │
    ▼
Document Parser
    │
    ▼
Entity Extraction
    │
    ▼
Knowledge Graph
    │
    ▼
Vector Index
    │
    ▼
Reasoning Layer
    │
    ▼
Hermes
Notice the graph is the source of truth. The vector database is just an index to retrieve supporting evidence.
The key insight from Dorsey's "world model"
The interesting part isn't using embeddings or retrieval—it's maintaining an internal representation of reality that updates as new information arrives. For an AEC firm, that means the AI should know:
What projects exist.
What physical assets and systems belong to each project.
Who has expertise in what areas.
Which decisions have been made and why.
How requirements, drawings, and RFIs relate.
How knowledge from completed projects informs future ones.
When someone asks, "Why did we switch from steel to glulam on Project X?" the system shouldn't just search documents. It should reconstruct the chain of events: the meeting where the change was proposed, the structural analysis, the cost comparison, the approval, the revised drawings, and the eventual construction outcome.
That is the difference between a document repository and a world model.
For a 30-person firm, I'd start with a lightweight but expressive graph (projects, people, decisions, documents, systems, materials, and regulations) and grow it incrementally. Trying to model every possible entity from day one usually creates unnecessary complexity. If you consistently capture decisions, relationships, and timelines, the world model will become increasingly valuable with every project rather than becoming another static knowledge base.










Makes perfect sense. Now how would i approach buulding this in practice?












I think there are two ways to build this.
The first is the "enterprise software" approach: define a huge schema upfront, build a complex graph, and spend months designing ontology. I would not do this.
The second is what I'd call the evolutionary world model. Start with a minimal ontology and let the model become richer over time. For a 30-person AEC firm, this is much more likely to succeed.
Phase 1 — Build a Universal Ingestion Pipeline
Don't start by building the graph. Start by making sure everything can be ingested.
Email
Meetings
Google Drive
Drawings
PDFs
Photos
Slack
BIM
CAD
Specifications
Every item receives a unique ID and basic metadata:
source
timestamp
author
project
file type
checksum
version
Don't ask the AI to understand anything yet.
The goal is simply: nothing gets lost.
Phase 2 — Extract Facts, Not Summaries
Most RAG systems summarize documents.
Instead, build an extraction pipeline that asks:
What new facts does this introduce about the world?

For every document, extract structured information such as:
People

Projects

Buildings

Rooms

Equipment

Materials

Companies

Meetings

Decisions

Issues

Risks

Deadlines

Codes

Standards

Products

Locations
Think of these as entities, not keywords.
Phase 3 — Build the Graph Incrementally
Every extracted entity becomes a node.
Example:
Project Alpha

contains

Building A

contains

Mechanical Room

contains

AHU-03
Then relationships:
Meeting 42

created

Decision 18

Decision 18

changed

AHU-03 location

Drawing M401

implements

Decision 18

Don't worry about making the graph perfect. It should evolve as the AI learns.
Phase 4 — Introduce "Memories"
This is where you become more like Dorsey's world model.
Every object accumulates memories.
For a project:
Project Alpha

Known facts

Open issues

Major decisions

Cost changes

Lessons learned

People involved

Documents

Timeline
For a material:
CLT

Used in

Projects

Advantages

Disadvantages

Failures

Suppliers

Associated codes

Preferred applications
The AI isn't just retrieving files—it builds an understanding of each object over time.
Phase 5 — Separate Episodic and Semantic Memory
This distinction is one of the biggest leaps you can make.
Episodic memory
"What happened?"
meetings
emails
inspections
RFIs
site visits
These are events.
Semantic memory
"What is true?"
For example:
Our preferred wall detail is...

The client prefers...

Engineer X specializes in...

Concrete mix Y performs well...

ASHRAE 90.1 requires...
The AI should constantly convert episodic memories into semantic knowledge.
Humans do this naturally.
Your AI should too.
Phase 6 — Add Reflection Jobs
This is the secret ingredient.
Every night, run agents that ask questions like:
What did we learn today?

Which projects changed?

Which decisions became obsolete?

Which assumptions were proven wrong?

Are two standards contradicting each other?

Which people collaborated?

Which expertise emerged?

These jobs don't answer users. They improve the world model.
Phase 7 — Build "Living Objects"
Instead of folders, every object has an automatically generated profile.
Example:
AHU-03

Current location

Manufacturer

Capacity

Installation status

Drawings

Photos

Meetings

RFIs

Problems

Inspections

Maintenance history

Lessons learned
It's like a Wikipedia page that continuously updates itself.
Phase 8 — Give Hermes Reasoning, Not Search
Once Hermes sits on top of this model, it should stop thinking in terms of "documents."
Instead, it reasons over entities and relationships.
For example:
User:

Why are we behind schedule?

Hermes:

Project Timeline

↓

Find delayed milestones

↓

Related RFIs

↓

Related subcontractors

↓

Recent meetings

↓

Budget changes

↓

Weather

↓

Generate explanation
Notice that Hermes isn't searching PDFs. It's traversing the firm's memory.
What I'd Actually Build
If I were starting this today, my stack would look like this:
                ┌─────────────────────────┐
                │        Sources          │
                │ Drive • Email • BIM     │
                │ CAD • Meetings • Slack  │
                └────────────┬────────────┘
                             │
                    Ingestion Workers
                             │
                OCR • Parsing • Chunking
                             │
                   Entity Extraction LLM
                             │
         ┌───────────────────┴───────────────────┐
         │                                       │
   Knowledge Graph                        Vector Store
 (Neo4j / Kuzu / Memgraph)      (Qdrant / pgvector)
         │                                       │
         └──────────────┬────────────────────────┘
                        │
                Reflection Agents
                        │
             Build Memories & Insights
                        │
                 Hermes Orchestrator
                        │
                 Telegram / Web / API
The graph is your understanding. The vector store is your recall. You need both.
One more idea: think in terms of "digital twins"
Rather than saying, "We have a knowledge graph," imagine your firm is populated with digital twins:
Every project has a digital twin.
Every building has a digital twin.
Every employee has a digital twin.
Every client has a digital twin.
Every piece of equipment has a digital twin.
Every decision has a digital twin.
Each twin maintains its own state, history, relationships, and derived knowledge. Reflection agents continuously update these twins as new information arrives.
This object-centric design scales naturally. Today you may have 50 active projects; in five years you may have 500. You're not adding more folders—you’re adding more entities to an evolving world model. Hermes then reasons by interacting with these digital twins, making the system feel less like a search engine and more like an AI colleague that genuinely understands how the firm operates.










Now, does all an aec company knowledge has to be part of the knowledge graph? Is this a good approach for cad drawings or pdfs? Think of the specific requirements for aec and the documents it uses












I actually think this is where most "AI knowledge graph" projects fail.
They assume everything should become a node.
For an AEC firm, that's the wrong abstraction.
The graph should represent the world, not the files.
Those are two very different things.
Think in terms of four layers
Reality
    ↓
Digital Objects
    ↓
Knowledge
    ↓
Evidence
Only one of those is the graph.
Layer 1 — Reality (The Building)
This is what actually exists.
Project

Building

Floor

Room

Wall

Door

Beam

Column

Pipe

Duct

Panel

AHU

Concrete

Client

Engineer

Inspector
These are all world objects.
This layer is stable.
Layer 2 — Knowledge Graph
The graph describes relationships between those objects.
Room 205

contains

AHU-5

AHU-5

supplied_by

Daikin

AHU-5

serves

East Wing

Decision 48

modified

AHU-5 location
Notice...
There are no PDFs here.
Layer 3 — Documents
Now we have
Meeting Notes

PDF

Drawing

DWG

RVT

IFC

Photo

Inspection

Specification

Email

Contract

Invoice
These are evidence.
Not knowledge.
The graph simply points to them.
Decision

supported by

Meeting.pdf

implemented by

Drawing M401

verified by

Inspection.pdf
That's a huge distinction.
CAD Drawings
This is where AEC becomes unique.
A DWG isn't knowledge.
It's an artifact describing the building.
You shouldn't ingest it like a PDF.
Instead, ask:
What information can I extract from this drawing?

Examples:
Drawing

contains

Door Schedule

contains

Equipment Schedule

contains

Revision B

references

Detail 4/A502

references

Room 102
The drawing remains a file.
The extracted objects become knowledge.
Revit
Revit is different.
Revit is already a graph.
Every element has
GUID
Family
Type
Parameters
Relationships
In many ways, Revit is your best structured source.
Example
Wall

Fire Rating

2 hours

Material

CMU

Connected To

Floor

Hosted By

Level 2
I wouldn't vectorize Revit.
I'd directly convert it into graph objects.
PDFs
Not all PDFs deserve the same treatment.
Think about different categories.
Specifications
Division 23

↓

Mechanical

↓

Air Handling Units

↓

Requirements

↓

Performance

↓

Maintenance
Extract semantic requirements.
Don't store paragraphs in the graph.
Meeting Minutes
Extract
Decisions
Attendees
Questions
Risks
Deadlines
Discard everything else into long-term storage.
RFIs
Extract
Question

Answer

Affected Drawing

Discipline

Status

Resolution

That's perfect graph data.
Contracts
Extract
Parties

Milestones

Deliverables

Payment terms

Liability

Deadlines
Again...
The graph stores facts.
The PDF stores proof.
Photos
Photos should almost never enter the graph directly.
Instead
Photo
↓
Vision Model
↓
Extract
Equipment

Location

Damage

Progress

Workers

Safety Issues

Materials
Now those become graph updates.
Drawings Should Have Their Own Pipeline
I actually think I'd build completely different ingestion agents.
PDF Agent

↓

Meeting Agent

↓

Revit Agent

↓

DWG Agent

↓

Image Agent

↓

Email Agent

↓

Spreadsheet Agent
Each one understands its own domain.
One Thing Missing from Most AI Systems
AEC firms don't work with documents.
They work with versions.
For example
Drawing A101

Revision A

Revision B

Revision C

Revision D
The interesting knowledge isn't Revision D.
It's
What changed between C and D?

That should become graph knowledge.
Revision D

changed

Wall W13

Reason

Client Request

Approved by

John

Affected Cost

$4,500
This is much richer than simply indexing four PDFs.
My Proposed Architecture
I'd actually separate the storage into five systems, each with a distinct responsibility.
Storage	Purpose	Examples
Object Graph	Represents the world	Projects, rooms, equipment, people, decisions
Document Store	Stores original artifacts	PDFs, DWGs, RVTs, emails, photos
Vector Store	Semantic retrieval	Chunks of specs, meeting notes, emails
Time Series / Event Log	Tracks how things change	Revisions, inspections, issue history, progress updates
Relational DB	Structured operational data	Users, permissions, workflows, ingestion status

Notice what's not happening: you're not trying to force everything into Neo4j.
I think there's an even better mental model
After thinking about your Hermes architecture and the Dorsey world model, I actually wouldn't call the center of the system a knowledge graph anymore.
I'd call it an Operational World Model.
The graph is only one component. The true world model is composed of:
Objects (the digital twins of projects, buildings, systems, people, and clients).
Evidence (documents, drawings, photos, BIM models, emails).
Events (meetings, RFIs, inspections, revisions, approvals, site visits).
Beliefs (derived facts, inferred relationships, lessons learned, and assumptions with confidence scores).
This mirrors how humans think. An engineer doesn't remember the PDF—they remember that a wall was moved because the client requested a larger conference room, and if challenged, they know where to find the drawing revision or meeting minutes that support that memory.
For an AEC firm, that's the architecture I'd optimize for. The graph should capture the firm's understanding of the built environment and its decisions, while the documents remain authoritative evidence that can always be revisited when deeper context or verification is needed.










What can we use to build this?  Okf? Gbrain? Neoj? Cogee? Explore many alternatives












This is actually one of the most interesting design decisions, because there isn't a single database that should own your world model.
If you look at how large AI systems (OpenAI, Anthropic, Google DeepMind, Dorsey's experiments, etc.) are evolving, they're moving away from "one database" toward multiple memory systems, each optimized for a different type of knowledge.
For an AEC firm, I'd evaluate candidates by the role they play rather than asking which one is "best."
Option 1: Neo4j (The Enterprise Choice)
Strengths
Mature property graph
Excellent visualization
Cypher query language
Huge ecosystem
Easy to understand relationships
Stable
Perfect for
Project
    ├── Building
    ├── Floor
    ├── Room
    ├── AHU
    ├── Meeting
    ├── Decision
    └── Engineer
Pros
Extremely mature
Large community
Easy integrations
Great for organizational memory
Cons
Doesn't "think"
Static schema unless you're careful
Can become bloated if every extracted fact becomes a node
For a 30-person firm, Neo4j is honestly a very safe choice.
Option 2: Kuzu
One of my favorites.
Kuzu is a modern graph database built specifically for analytical workloads.
Pros
Extremely fast
Lightweight
Embedded
Great for local AI
Easy Docker deployment
Cons
Smaller ecosystem
Fewer enterprise tools
If you're building Hermes yourself, I'd seriously consider Kuzu.
Option 3: Memgraph
Think
Neo4j

Streaming

Real-time graph analytics
Great if your system is constantly updating.
Option 4: RDF Triple Stores
Examples
GraphDB
Apache Jena
Stardog
These shine when you need formal ontologies and standards.
AEC already has IFC, COBie, and building ontologies, so RDF can be attractive if interoperability is a priority.
The downside is complexity. Unless you're integrating heavily with semantic-web standards, they can feel like overkill for a 30-person practice.
Option 5: Cognee
This is probably the closest thing to what you're imagining.
Cognee is not really a database.
It's a memory orchestration framework.
Instead of saying
Store this node.

You say
Learn from this.

It decides
graph updates
vector updates
summaries
memory formation
Very "world model."
Weakness
Still early.
I wouldn't trust it as my only source of truth.
I would use it on top of another database.
Option 6: Graphiti
This project has become increasingly interesting.
Instead of a static graph
It continuously builds
Entities

Relationships

Episodes

Facts
Very close to episodic memory.
I actually think Graphiti understands memory better than most graph databases.
Option 7: GBrain
I think GBrain has one of the best visions.
It treats memory more like a cognitive system.
Instead of
Database
↓
Query
It thinks
Memory
↓
Reasoning
↓
Reflection
↓
Belief Updates
Very promising.
Still young.
Option 8: Zep
I wouldn't call Zep a graph.
It's long-term memory.
Great for
conversations
users
agents
preferences
Not great as an AEC world model.
Option 9: Obsidian + AI
Many firms are tempted by this.
Don't.
Fantastic for humans.
Terrible as an autonomous world model.
Option 10: GraphRAG
Microsoft's GraphRAG is often misunderstood.
People think it's a graph database.
It's not.
It's a retrieval architecture.
It builds graphs from documents to improve search.
Very useful.
Not your primary memory.
Option 11: Open Memory MCP
Interesting if Hermes speaks MCP.
Could become your standardized memory interface.
Still wouldn't replace a graph.
Option 12: Plain PostgreSQL
Don't underestimate this.
A surprising amount of your "graph" can be represented relationally.
Projects
↓
Buildings
↓
Floors
↓
Rooms
↓
Equipment
↓
People
↓
Meetings
Postgres handles this beautifully.
Then use pgvector for embeddings.
For many firms, that's enough.
What I Would Build Today
Here's the architecture I would choose if I were starting from scratch.
Knowledge Layer
Kuzu (or Neo4j if you value ecosystem maturity) for the operational graph of projects, people, systems, decisions, and relationships.
Evidence Layer
Object storage (S3, MinIO, or a filesystem) for PDFs, DWGs, RVTs, photos, emails, and other original artifacts.
Semantic Layer
Qdrant (or pgvector if you're already committed to PostgreSQL) for embeddings and semantic retrieval.
Operational Layer
PostgreSQL for users, permissions, ingestion jobs, workflow state, audit logs, and application data.
Memory Layer
Reflection agents inspired by Cognee, Graphiti, or GBrain concepts that periodically transform new evidence into durable knowledge and update the graph.
The architecture I'd pursue for Hermes
Given everything we've discussed about Hermes acting as an orchestrator rather than just a chatbot, I'd separate storage from intelligence.
                   Hermes
                      │
        ┌─────────────┼─────────────┐
        │             │             │
  Reflection     Planner      Specialist Agents
        │
        ▼
  Operational World Model
        │
 ┌──────┼────────┬─────────┬──────────┐
 │      │        │         │          │
Graph  Vectors  Documents  Events  Structured DB
Kuzu   Qdrant   MinIO/S3   Postgres  Postgres
The important shift is this:
Neo4j/Kuzu answer: What exists and how is it related?
Qdrant answers: What documents are semantically relevant?
PostgreSQL answers: What is the current operational state?
Object storage answers: Where is the authoritative evidence?
Reflection agents answer: What have we learned, and how should our understanding change?
That last component is what transforms a collection of databases into something that starts to resemble a true world model. For an AEC firm, I'd spend more engineering effort on those reflection and extraction pipelines than on picking between Neo4j and Kuzu—they'll have a much larger impact on how "intelligent" the system ultimately feels.
