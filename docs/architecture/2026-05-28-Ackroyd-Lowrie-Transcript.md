---
type: call-transcript
archived: 2026-06-02
date: 2026-05-28
title: "Transcript — AL Pre-Build Call"
archive: true
client: Ackroyd-Lowrie
project: Phase-1-Build
---
# Transcript — Ackroyd Lowrie Pre-Build Call
**Date:** 2026-05-28
**Type:** Pre-Build Technical Session
**Participants:** J. Felipe Molano (Molior), Oliver Lowrie (AL — Principal), Danny Ivatt (mountup.ai)

---

Here is the complete transcript from the meeting between **Felipe**, **Danny**, and **Oliver** as provided in the source material.

***

**Felipe:** Okay, we are recording now about to enter the meeting with Danny with Oliver to discuss about the technical the details of the diagnostic. So that's the purpose of of the meeting. I prepared a little script on how we should approach it, but it shouldn't be too hard. You just like going back and forth about the technical and architectural decisions of of the build actually. End of the structure of how how to implement the system. Hey, Danny. Nice to meet you.

**Danny:** Hi, Filipe. How you doing?

**Felipe:** I'm doing great. It's It's good to to meet you.

**Danny:** Just give me 30 Just give me 30 seconds. I need to get a glass of water before we start.

**Felipe:** Sure. Respect. Don't worry. Put it down. We're on the call. I know that. But

**Danny:** Yeah. Yeah. Don't worry. Hi Oliver. How are you?

**Oliver:** Good, thank you. How are you?

**Felipe:** I'm good. I'm good, thanks.

**Oliver:** Danny's just an empty chair. Sorry I'm late.

**Felipe:** No, Danny was getting some water.

**Oliver:** It's time to swim. It's lovely. But it's just started raining actually. I think it's going to be thundery now.

**Felipe:** Good. Good.

**Oliver:** Danny's been hiding inside a week. Doesn't like the heat.

**Danny:** It's It's um yeah it it's it's been really hot here and um you you're in Brazil, right?

**Felipe:** I mean Colombia.

**Danny:** Oh, you're in Col Oh, sorry. I got that wrong. Yeah, Colombia. Well, so in the summer you're used to heat. But but the difference here is because we're not used to it. Nothing's built around heat. So when you walk into a shop in a hot country, you would expect the shop to be air conditioned. When you go home, there's an air conditioner. So the difference here is it that's that doesn't exist. So there's no there's no way you there's no way you can go. So I just sat inside with the curtains closed in a dark room.

**Felipe:** Yeah, that's that's horrible. Yeah, if you're not not used to it if handling the heat is is

**Danny:** yeah terrible.

**Felipe:** And sorry, apologies for the country confusion. That was

**Danny:** No, no, it's fine. It's fine. It's fine.

**Felipe:** Just some Brazilian people earlier this week.

**Danny:** Yeah, no worries.

**Oliver:** Um right, so Fe, quick introductions. Um Danny I think I met Danny before I met you and we um have been working on a few things together. One is Danny's thing that he's building which is a compliance uh check tracking piece of software that checks your model in your drawings in terms of their compliance with UK building regulations. And then the other thing that we've been working on is like the kind of the second brain idea for for AL. And then I kind of met you afterwards and so Dan has kind of been background shaping our thinking a bit and informed the way that we approached you and then also has now kind of reviewed what you have proposed and overall thinks that it's pretty good but also I think well I'll let Danny say what he thinks about maybe there's to scale it there's maybe an extra layer that is that needs to be added um but uh how do you want to start um Felipe do you want I don't know would it be helpful Danny if Felipe did a quick like two couple of minutes just running through that document to fill in any of the gaps that maybe weren't clear in the document or do you think you

**Danny:** um yeah sure why not I have I have read it in some in some details um but but yeah so don't don't feel like you need to um read read out every item but if there's anything you want to focus on in more detail be helpful

**Oliver:** I said that D maybe give your background because um I think that will make more sense as to why so Filipe you probably come at the same problem from the exact opposite direction that Danny has Okay.

**Danny:** Yeah, I'm I'm pretty new to this industry. Um really just started working uh working on problems in in architecture and AAC this year. Um but my my background is is 20 years working in tech and um for most of the last 10 years focusing specifically on um data and AI shaped problems in uh in big organizations. So um so what I'm doing you know with with Ollie and for this industry is not necessarily a direct lift and shift of the same approaches that might apply to a you know global company that employs 50,000 people. Um you know some of the things aren't aren't right that they're suitable for one scale but not not for another. But yeah I do have a a pretty good grounding in um like all of the kind of you know fundamentals of building robust software systems. Um so yeah. kind of bringing a lot of that to the the discussions that Ollie and I I have had whether it be my product or you know wider wider issues in the industry. What one of the things

**Oliver:** just a quick point it's not about marking your homework Felipe. We we think that there's there's a version in the middle where you you guys both gained something from collaborating or making this um bringing the strengths that you have of a of like architecture and engineering industry and the strengths that Danny have has of software and compliance and like bringing them together. So, this is not like a critique of your work, Felipe, at all. Don't see it that way.

**Danny:** No, not at all. It's the same as we're we're collaborating. Hey, Ollie. I mean, there are things that you've said to me and, you know, feedback you've given to me that I wouldn't have thought of that was invaluable to what I'm doing. So, yeah, absolutely.

**Felipe:** I agree with the framing. And so, quick question before I get into it because I would like to get into the document, but I also like to before I get into it, uh, understand your perspective on it because since based on on your background. I understand you have like more of the technical and compliance aspect of what the build should require. And so I do want to get into that because I think that's that's the core of what's maybe missing or how we complement the the system. And so uh if you could walk me through about your perspective of the doc so I can go discuss it uh point by point.

**Danny:** Yeah, sure. Sure thing. So I think um I think your thinking on um like from diagnosis point of view. Um, and in terms of mapping out and understanding the organization, systems of record, the integration points with them and and and how mature they are. Um, uh, the workflows that you've that you've identified, all of all of that stuff, I think, is really strong. Um, and and I think it's a like it's a really good analysis and diagnosis document from that point of view. Um, the ROI calculations could probably do with a bit of a rethink, but I'm not going to focus on I'm not going to focus on on that so much. Um, okay. But I think in in in general terms, what you're what what you're what you're proposing if you think about this as a layered architecture. Okay. So, you've got systems of record down at the bottom. These are the tools that typically an organization has bought for a specific purpose and whatever logic they've got in them. They're really framed around like a a structured database where the records sit and you you've identified rightly that they don't they don't talk to each other. Um but I think so what what you've got really is something that sits right at the top level in terms of user interaction layers and workflow orchestration leveraging AI. But what is missing is the middle layer that is there to stop some of the potential likely issues and some of the potential unforeseen issues that might come from only having a workflow automation layer in place. So the the principle one of those I think is about having uh structured data stores.

**Danny:** So there are a few areas that that crops up and may be that you just not included this kind of detail in the proposal. And I I totally understand. You don't put everything in a proposal because it means no one would read it if you if you did. But um a dashboard as an example, it can't really be something that's created on the fly every time and and live live updated. A dashboard for you know directors of an organization for anybody else needs to provide a kind of authoritative canonical view of things which needs an underlying database. Now that underlying database can be a combination of feeds from the systems of record, stuff that agents have been have produced, but it needs to be in the same structure and and and schema and so everything needs to feed into that. What that also of course gives you is some resilience. If cord is down, which it is all the time, although they seem to be getting better, um then you know that that that analytical view of the organization is is still there. And then I think that this also applies cuz I think you you've referenced in your kind of grouped architecture diagram in the box on there like the need to have a a knowledge store for this but and correct me if I'm wrong it feels a bit like a kind of extrapolation of like a obsidian type documentbased memory for this but organizational scale and those things tend to work for an individual use user. But if you're doing this at scale, you know, even for a organization ollie size and especially when you, you know, you get into 50 people, 100 people, 200 people, you're going to get into a situation where the number of markdown or whatever documents that you've got in there to to search through them is going to require really extensive metadata on them to tag them. It's going to rely on the agent each time going into that. It's going to it's going to burn up a huge number of tokens and tokens are like you know 10x the cost via the API than they are on a sub on a subscription and it it just potentially risks you getting different answers to the same question each time cuz it's all fundamentally not done nondeterministically. So I I think that kind of stuff needs to be replaced by a structured database that is the canonical store for things. And then that that database can then also be extended to include other things. So you've got some really welldefined skills and workflows and processes. But just as you know Ollie will have catchups with members of his team and you know he'll like sit in project like feedback and governance sessions and that kind of thing. If we've got autonomous agents working we also need to know what they've done. And so the database then can also will be extended to become a component of a control plane for what's going on because things do drift over time. Opus 4.8 is about to be released. I'm going to have to re-evaluate all the stuff I built with 4.7. Um, and so you need a way of understanding and analyzing like what happened, what steps were taken, what data, what data was written, and you need that, you know, just as as data in an analytical data store um to be able to understand and govern the thing. Um, it doesn't need to be complex. It can just be a Postgress database. We don't we're not getting into like, you know, massive enterprise scale data platforms and warehouses and and things like that. But I do think it needs to be in place. What that also then gives you is options for where your integration point is for the agent because at the moment you rightly identified all the different systems of record and MCP servers associated with them. Um, MCP like eats up a lot of tokens. Um, and you're relying on the agents reasoning to query the MCP server in a particular way each time. And then when you get when you get into things like, you know, HR systems, finance systems, you and and the rest, you often find that the same piece of data is replicated across different tables in the underlying system, but there's only one that you should actually use. And so rather than trying to bake that into like agent logic and force it to do the right thing every time, a simpler approach can just be to cache that data into a central database. So that for things that that don't change that that frequently that get updated that get updated once a day that don't require you to put load on the underlying system, it can often be much simpler and more less risky to just capture that, put it in a database, and then the agents go to there. And all of this is about increasing the likelihood that doing the same thing twice gets you to the the same result. Because otherwise, you know, if you look at the kind of fee proposal example, you you you risk getting drift over time because you're going out and, you know, you've got agents that are, you know, capturing call logs and you know, taking documents and emails and that and that kind of thing. You're relying on the agent to decide what it wants. You're storing it in an unstructured way and then, you know, several hops further on, you just risk there being drift over time in what's captured, what's stored. Whereas, if you've got a standard schema in place that says this field, this field, this field a time stamp associated with it. You're writing to structured JSON, you're always keeping the same record and log of what's of what's happened. And then if something breaks, if something goes down, if you decide like Claude is far too expensive or you want to replace it something else, you've got the record and the log there and it's in a it's in a structured form. So I think that that's probably the the core of it. The other the other aspect I think is worth thinking about is the um MCP side of things. So the MCP is great. It's not the only way. There is, you know, CLI route, etc. as well.

**Oliver:** Danny, do you want to do you want to do you want to pause on that point and chat through that one and then we'll save on me going on.

**Danny:** Yeah. All makes sense, Felipe.

**Felipe:** Yeah, it makes perfect sense. And actually, so basically I do agree with you in most things because actually part of the process that I've been realizing is that the system that that I've built for myself and for the first couple of clients that I've worked with is as you mentioned it's it works for a a small scale team like for example working as a solo operator operator of working with a company that has five different people. It works because even you can maintain a couple of markdown files and connect them to your specific tools. But I do agree and that's the case that as I was performing the audit I did start to realize that the system is not scalable to to the scale of for example as as so I do agree with you with agree with you in that sense one of the things that and so based on that what I've been developing and understanding and I'm starting to try within my own firm and the the firm I'm working with is that that middle layer could be u it's it's an exploration it's it's a way of approaching it we have started there's two specific uh I would say platforms or approaches to try to solve this one is called Gbrain which was built by the director of y cominator and that's more it's the thing is that the specific brain what it does it collects all of the information for a specific person a specific firm that it includes email, projects, uh, Slack, communications, everything. And it starts to build this complete idea of of the real world um state of the firm. And so, for example, it creates entity pages for people, companies, clients, uh, it collects meetings and so this starts to become that middle layer that is based on markdown files. But what the value of this is that, as you mentioned, Daniel, I because actually making the connections from your perspective to what I'm being studying at the moment. So I think it's I'm walking through it. But it's valuable in the sense that this brain allows us to that anytime we need information for example about a project that brain has the context of where the project is at the current state u and the key data of the project for example the budget or any specific data that is that is important to that project. And so when you need to access that, you actually go to the brain. You don't have to go to the specific

**Oliver:** Can I just can I just from what I was discussing with Danny, I think this it might already be solved. Do you know what I mean? Like I think from from Danny's experience, what he was saying is you're just missing a proprietary system there.

**Felipe:** Yeah.

**Danny:** semi-proprietary, something that needs some development and and and configuration, but there's like services you can use to build this. Yeah,

**Oliver:** because it needs to be structured, I think, is the main point.

**Danny:** It does. Like, if it's MDs and it's just a s*** ton of MDs, you have to use agents to go in every time. If it's structured, the roots are preset and the agents don't go into it. They just operate at the top. Yeah. The GBrain GR I I don't think GBrain is actually too many steps away from your proposal. I wouldn't I wouldn't Gary Tan is uh is very good at broadcasting his work and because he's at YC, everybody wants to tell him he's done a great job. Um, it's not it's not bad at all, but as far as I'm aware, it doesn't have a structured like relational database at at the heart of it. And it it's it's still it's still fundamentally done from markdown files and a kind of um inferred graph um representation between those files in the same way that Obsidian does. I'd have to look in the repo in more detail, but I but I I think so. But it's yeah, really what what we're talking about here here is is just a database and I would probably um to do in doing this I probably use a service like superbase which provide you a managed Postgress database as a service and the APIs on top are just generated automatically um and you you know you just use that single instance as the store of everything I mean I I can show you like really really quickly the kind of thing that I

**Felipe:** yeah that that'd be useful and actually to complement a bit on that from my understanding of of Gbrain and the way I've been exploring is that the value of GBrain is that it's the base the knowledge store is the markdown files but what it does is it has the system of taking the knowledge from and from the markdown and extrapolating into a vector graph

**Danny:** and so as you said it

**Felipe:** and you store it and you connect to it through s to superbase.

**Danny:** Okay.

**Felipe:** But it's it's not it's not a relational database. It's more of a vector database.

**Danny:** Okay. That that makes sense. I think vectors is just one thing that you need. So um you really I think you need you know something along these lines in terms of um data being captured from source systems. You might not need to do you might not need to do all of them and it might not need to this complex, but a vector database for the stuff that you're you're identifying and things like um proposal writing um and the and the store for that um is is is great and very amanable to put in a in a vector database. Something like the financial performance of previous projects and the margin on them and combining like project management and people information with with financial information isn't something that should really be done just as two different MCP queries and then um like r like rationalized by the agent itself and give an answer is probably something that should be an analytical fact table. So the like a structured table in the database that answers the questions that has the data that's suitable for the agent to answer those specific questions that that persists no matter what the connection is into it. And then you might also want to have a operational store which which would be say a a guide to the files that are in Ignite as an as an example. Um you know so just capturing the the metadata of those so that your your agent isn't going into Ignite and doing things that are like really exploratory to find the the right thing and the latency and the token costs that that come from that. It could just be a record of like the files that are in there. But I don't think any of this is like a like build the whole thing and then wait until the stuff you do on top. The the idea is pick the first workflow, understand at each level like from the you know like interaction with the user workflows like the the the middle layer here and then the integrations what this the first slice of those things needs to needs to be. Um

**Felipe:** yeah, I agree with you and that sense.

**Danny:** Does that make

**Felipe:** it does and I do I actually do agree with you because uh in the sense that the from the the base framing I think it's it's correct. One of the things that we maybe I think you maybe have uh take into account but I I would like to maybe you didn't address it is that I think that's valuable in the sense that whenever you have you build a structural uh for example it could be a JSON file a structured schema that whenever you need to query it, you know it's correct because it has the connect uh the correct version and it's it's it's deterministic in difference from from building with AI. However, uh one of the things that the value of using is that it allows you to keep up to date the tools that you have. So for example, if you only keep like if you only operate with the data that's inside the middle layer, then maybe the the files that are on engineite or in Google Google Drive they they uh become they they get outdated and so you need a system that keeps them up to date based on the changes that are done through the system. Does it make sense?

**Danny:** Yes. I mean it always would be. Yes. So I mean what and I'm not proposing JSON. What I'm I'm talking about is a like a structured SQL queryable database. I I I also I don't think this replaces all of the like direct integrations into the underlying systems when you're when you want to do things that are live, you still need to do that, but you still need structured representation of data in place. You especially need that for a dashboard. I mean, you can't really have a scaled dashboard that doesn't have a a database under underneath it. Um, otherwise, you're you know, you could you could have that sat on top of a file and it just shows like static HTML from the file. But then what do you do with the time series data, you know? So dash dashboards are most helpful when they show like the trends over time. So when you're getting into like among 3 months, 6 months, a year, two years, that that kind of thing, you know, you want to be able to see the trends and over time, the easiest the easiest way to do that is just to have a database that shows those things rather than going down to the systems to query them because most systems of record don't keep good time series data. Some finance systems do, an awful lot of them don't. What normally happens is when a value is changed, it just overwrites the previous one. So you're you're losing the ability to have like 3 months, 6 months, 2 years, whatever worth of data unless the system is specifically build built around that. There's things that I wouldn't propose going down this route at all like like um you know Google Google Workspace, Gmail, that kind of stuff. They provide really well set up provisioned MCP servers. Most of the time that's what an individual wants to do themselves and naturally a human in the loop. There's not much point in in trying to capture information about what's in your inbox and put it into a central database. But I think the there are a lot of examples of where you do need to do that. And then the other one that I mentioned is just

**Oliver:** so Danny just just on that like and uh because you do want some important things that happen in emails to be recorded centrally somewhere. How do you how do you get the distinction?

**Danny:** Well, I so And this is another thing I I I wanted to mention as well. So you you've mentioned that you mention you as I said your diagnosis is really strong and you you you've effectively really effectively diagnosed that individual email inboxes are being used as a system of record but the people in the rest of the organization don't have access to them. But I don't think um in the UK you can go into individual's inbox. I I I don't think that's uh I think that's a very tricky tricky area legally, but you could say have a kind of you know, you could set up a rule globally um and uh and and really where you don't want to be mcping directly into that to go and look at the email. What you want to do is establish a data store that captures the emails when they come in and puts the information in that in that data store in an agreed format with you know an agreed structure to it.

**Oliver:** Talk talk me through that again. So on the way if somebody is sending an email out it doesn't get captured until it comes back in or something or no how does that work?

**Danny:** Uh, no. I'm just No, I'm just I'm just saying I don't think an integration route into an individual's email inbox is the right way.

**Oliver:** No, I sort of agree with you on that. But I do think in any case, all of our emails are all stored centrally somewhere because when somebody leaves, we have to migrate them and stuff. So, there is like it does exist. It's somewhere in the Google vault that they all and it's not like we want to go read everybody's emails, but the project the relevant project information on the way in to their inbox needs to be extracted.

**Danny:** Yes, it needs to be um it need it needs a rule set up that you know they're all sent to a sing a specific mailbox or something like that or they're all all sent to a specific a specific place and then the information out of them extracted from that email.

**Oliver:** But if there's any friction like a practice I used to work at you were meant to copy in like a project email address for every project but like you know as soon as it got CCD out of the chain once it never got back in again and everyone used to forget. So we like that won't work. Um I don't know how you know I mean that's the most difficult problem to solve.

**Danny:** It it needs it needs investigating but the alternative is um MCP into everybody's inbox and polling it every hour everybody's inbox every hour. That just it is not something that can scale

**Felipe:** and it's possible. I agree with you actually. One of the key points because uh from my research and the the way I've been building things. I think the way to oh I wouldn't say solve it but a way to approach this is that you realistically don't want to pull anyone's inbox at any time like that's private information that's it's it's for each person but what you would want to do is that when they get for example uh they're corresponding with a a consultant in the specific thing about a project what you want to do is that the key information of that email uh for example action items the progress report and the key information that actually extrapolates to the central firm. So like this middle knowledge layer.

**Danny:** Yes.

**Felipe:** Then we need when you actually need to know the the current state of a project, you query that you don't query the email of the person that responsible you create the middle layer.

**Danny:** Yes, I totally agree. And that needs to be a database.

**Felipe:** Yeah.

**Danny:** Yeah. Essentially. Yeah.

**Felipe:** And so yeah. And so the way is that this the each person of the firm will have their own MCP or CLI to their email so that they can extract the information in their specific inbox. But the key information with regards to the firm is actually querable by everyone through this middle uh database.

**Danny:** Uh yes. Yeah. I I I don't think you you you wouldn't withhold MCP access to an individual to their inbox. I think that's a great productivity tool. But yeah, the if if you're if you're if you're taking things out of individuals inboxes and making it a shared resource, you you just need to find a way of doing that. But I I don't know enough about like Google Workspace and how and how it and how it works to know the answer to that question. You definitely don't want some one person to be able to query the inbox of another person. That's not that's not that would definitely not be a good thing.

**Felipe:** Yeah.

**Danny:** Yes. But you also don't want a central system to be polling everybody's email inbox in case a client email comes in.

**Oliver:** No. No. I know. Yes. Okay. Well, we might have to come back to this on a solution for it.

**Danny:** There'll be a solution to it within like um within how you administer um Google Workspace. I just don't know what it is off the top of my head, but there will be.

**Oliver:** Yeah, actually I think John John would know the answer to this. Maybe

**Danny:** there there will be. Yeah,

**Oliver:** but I do agree that the structured data for that could be either financial data or for example project information and the email knowledge because that's what actually updates the state of the project should be integrated into the same middle layer system.

**Felipe:** I can all of Those things should go together.

**Danny:** Yeah, I think we all agree on that.

**Felipe:** Yeah.

**Oliver:** A couple of other things if you don't if you don't mind just some observations as well.

**Felipe:** Good.

**Oliver:** So, Philip, are you happy you happy on that that first the first point which is essentially a data layer?

**Felipe:** I do clear on that.

**Oliver:** Yeah, good.

**Felipe:** Makes perfect sense.

**Oliver:** Cool. Um, so next next thing I just wonder what your thinking on on MCP and authorization and role-based access. and how you think about the fact that an individual systems MCP server may allow things to happen, may not have controls around it, but you don't actually want an agent to be able to do those things.

**Felipe:** Yeah. So, at the core and based on what we we surface in the audit is that you want an a agent to have the same access as the person that's operating the agent for example cloud and so uh al manages through jumpcloud so you have a specific access to specific tools and within the each tool you have a specific folders and so what you want to do is that the person that's operating for example cloud codeex they only have access to what they what the person has and so a way to do that is actually from the research and from the audit jamcloud has a way of actually managing that those connections so if the firm already has a way to to for authorizing specific uh uh users to specific files, you can replicate that with an agent system. So that's one of the core findings of of of the audit is that you can actually ma manage authorization through uh through cloud.

**Felipe:** But the other thing is that you also want to have more autonomous agents that are responsible of keeping up the system and working on

**Danny:** so that's where you should be more specific into for example an agent that uh takes all of the today's progress and updates the Excel file or the

**Felipe:** and that's what I'm talking about. Yeah.

**Felipe:** Yeah. And so at that point what you should do is that first you need to build a system of having a sandbox uh agent for example cloud managed agent that has a copy of the both of the original source and the day's work. And it it's it should be like a a a git system that the agent creates a par parallel par parallel uh um tree and so it makes the changes and then when you get to check them you can merge them into the actual file system into the root into the main and so

**Oliver:** Felipe we're not desperate to keep jump club by the way um

**Felipe:** yeah

**Oliver:** because we don't love it and I think if there's a simpler way like as in Google we would be happy to do it by that but I don't future

**Danny:** I would I would I would recommend just using using Google for all your all your access control it gives you a single like point of of administering it and you know, if there's a system that doesn't allow it, then you you you find a workaround for that. But I would probably I'd probably choose that as the like preferred route. But so what what you outlined in terms of like autonomous agent access to systems. Um yeah, that that that is where MCP causes a problem and and it depends on the controls that are available in the MCP server that the the system vendor provides you. So you're quite right if if when when an individual is using something on their machine, the default position is typically that you just give them access to um that you just give their agents that run on their machine or wherever that you know their personal agents access to the same privileges that they as an individual get. I think that is often Okay, it can still cause problems because the speed and scale with which an agent can do things goes well above what a human can. It also potentially creates issues if say at the moment people don't get access to the finance system or the payroll system you know or the you know payroll data is in the finance system but in order to do one of these workflows and in in order to trigger it, it does require access to it. Well, there may not be fine grained access control on the finance system and so you potentially risk people being able to go and see what everyone gets paid or or or that kind of thing. It it it requires an in-depth investigation of of the MCP itself because just because there's MCP there and just because it can provide a authenticate an individual a personal agent or an autonomous agent into it um doesn't necessarily mitigate the risk that is created. So even if you're able to limit the agent to being able to do you know five read actions and one write action, there is a risk that in that right action it will wipe out everything. And so this is one reason why I say that the um the G Suite, the Google Workspace MCP server is is great and just stick with it because it it can you know you can apply those permissions and controls and you can do that you can you you can do that administration at a team level but with others that are less mature you you don't necessarily have that guarantee and so I think like depending on what the first thing is first workflow that's chosen is it needs um it needs is an analysis of the integration route and what's available to it and not just mapping out the happy path but also understanding the unforeseen things that you that you might not anticipate and the blast radius of those. So, you know, MCP gives access to these 10 10 things. Well, what's the worst thing that could happen? Well, maybe it like deletes all the data in in those five. And so, I think it's just a reason why you might want to consider a centralized MCP. gateway wherein you can apply controls that are not part of the systems regular um role-based access controls cuz human role based access and agent role-based access are not not the same thing. You trust a person not to delete every single record in the database and if they try and do it they probably got to delete this page then click on next and this page you know whereas an agent could potentially just do do the whole thing. So, I think that's another component that that that could be needed. Again, I don't think it's something that just gets built up front, but you have to look at the the risks of the first workflow, especially anything that's running autonomously and yeah, just understand how it's ability to do things to the underlying system is controlled and how that's recorded. It's another reason why putting in a database is a good idea as well because if it's if it's compromising the database it hasn't compromised the system.

**Felipe:** Okay, makes sense. I have building on that there's two ways in which you can also manage controls uh like I think this should be a a complete coherent system but two ways in through the steps that you can actually manage it is first at the workflow level. So for example my the methodology that I'm trying to to to to promote and implement is that most of the actions you want to make through the AI should be skills. And so at the skill level, you should be able to dictate to the AI the specific actions they can make. For example, you can limit it of only uh read from the source and to bring it here and to analyze it. The actions that require actually making changes. It should be a lot more like uh strict and be create. Of course, you can never completely trust AI, but have a more clear system of how to handle the actual editing of the data. So at the skill level, you can start to prioritize that. At the second level is that actually the through the MCP access you can control some of the things. For example um the in the notion MCP the specific user and the specific person you can give it access to a specific databases and the specific actions it can do. So when you configure you don't want to of course want to configure a system a firmware wide NCP connection for example to notion but for the specific user there should they should only be able to read or edit a specific database. And so at the MCP level connection of the each user, you could also get some uh way to control what uh it can do.

**Danny:** Yeah. And and and notion is is an example of a very AI native mature mature organization. I think there probably are a number of examples where you would want like you know a a organizational system and autonomous agents to have access to something like notion.

**Oliver:** Um because you know if if you'd make the decision to to adopt notion, you should probably go all in on it. Um because it it's started fiddling with it. Very good, very good tool.

**Danny:** But um you know that that's a mature MCP um ecosystem there. Not all of the systems are going to be like that. And so I I I I don't think this is just a default you need to extrapolate the MCP away and put it you need to host it in the cloud and you need to own and control it and you need to log it. there are it's a case-byase basis but it needs to be there as an option because even in the case of something like notion where you are where you know it it it's got um role level security on the database and it's you know you can tightly configure these are the things you can read these are the things you you can write you still risk exposing yourself to and one of the things that you can write an agent taking over in action and and destro destroying everything that's in there. So, yeah, I think it's just it's a case by case basis, but there likely has to be some kind of centrally administered um MCP gateway of some sort if once this gets into into scale like the first thing that you do might not need it. Um Gmail for an individual accessing their their stuff doesn't doesn't need it. Although that said, if you're if you're adopting cord team. I think you you do want to centrally lock down what the MCP servers are to the systems of the organization rather than it being individuals in installing them themselves. So like this is the this is what we use for for Google. This is what we use for other systems. And you can apply that across all of your users and so that they're not adding adding their own that might compromise the systems that are shared with other people.

**Felipe:** Yeah, it makes sense. I agree. And I I do think that the as you said, you don't build it first and then start to operate. It actually it's you develop it as you go on through the workflows because each workflow will have a specific requirements and so you build on bas based on actually trying.

**Felipe:** Yeah.

**Danny:** Yeah.

**Oliver:** Could you could you show Danny Could you show Danny um the thing that you showed me the other day, which is I think one of the things I kind of want to get to reasonably quick is like the front end. I'm sort of starting to try and build it myself which is like the CRM like pipe drive isn't a CRM or certainly the way that we use it um isn't a CRM. So I was like f*** it I'll just do a notion. So clawed the notion and trying to get like a less leaky kind of CRM um it doesn't need any of this data platform necessarily to start with. It's just called notion email and calendar and like I've got a Google sheet with some invites on. I was like, well, that's like to sort of start it off. Um, that could be enough. And so, I'm kind of testing out. But, Felipe, could could you show Danny what like how your front end thing starts? I think it's it's really cool.

**Felipe:** Well, it's not really my front end. It's the way that I handle my own CRM, which is through through notion. So, okay.

**Oliver:** Okay. Well, like client onboarding, whatever. I don't know what you call it, but um yes. Sorry. The your your sort of Yeah, your CRM. Yes. Let me share my screen. Um, one sec.

**Felipe:** I started trying to copy it basically, but I um, how do you make your agents not stop all the time?

**Oliver:** In what sense?

**Felipe:** Like they just they have they need to me to answer something and then like I forget to answer it for like two days and then and then they've just stopped doing anything on for f***** sake. Could have just got on with this yourself.

**Oliver:** Well, I'm not sure about the question. Uh let me go walk through TR notion then we can I I can answer the question. So okay. So basically this is my um the way I handle this my specific form and here I have all of my databases in notion that task and different CRM for Alban the lead magnet discovery clients And so I also have a client portal which is like whenever I sign a new client I send them this. So it's a welcome page and here I post the progress of of example the of the build. And so all of it I have it centralized and for example one way is that I have the CRM for specific discovery call. So for example here is AL and the way I do is that I create a page for every user and this is completely automated. So for example whenever I have a a new call I go through the CRM and build a profile of the person I'm talking with and every engagement log of how I've interacted with the person uh progress reports and so the way of doing this is integrated into into notion. So that's my way of of building the CRM for this specific case of of these

**Oliver:** but that's coming from your so the trigger when like take me as an example I think I like messaged you on LinkedIn and then you probably gave me your email and I emailed you and then did your agents then set up a profile for me cuz how did No, I was like an inbound inquiry.

**Felipe:** So you your your lead came from LinkedIn and what you did was as you when you booked the first discovery call that added your your email to this discovery and so I had an agent that automatically as this is the you add your email it goes through a complete research of you of of your firm and it it start to build up this page and with information about everything your role your LinkedIn page and I'm building this specific page on you. And so every time we have a conversation or a different call meeting, it starts to add up onto this this page. And so whenever I need to query information about uh a decision we made, the both of us, I query this specific page. And I do this for every interaction I have and for every user I have.

**Danny:** I think this like notion what it on a on a smaller scale is representative of exactly what we've been discussing. So if you go back to what you were looking at there that you're your that list. Yeah. The key is the icon next to CRM discovery, which is the icon for a database. Yeah. Notion in one self-contained piece of software is essentially all of the different layers of an AI operating system that we're that we're describing. So, it has some feeds and integrations in into external systems. Then it fundamentally is built around databases. So structured records and then on top of that structured record sits logic and workflows and an AI layer. Um so yeah I I think notion is neatly kind of explaining all the all the concepts that I was that was talking to because of course you know that that's how it works as software

**Felipe:** in that sense. I do maybe we can explore it. I do think that if you really want to scale it, it should be a a specific relational database. However, notion could be like a a middle step of getting to that database uh of becoming this middle layer.

**Danny:** Could be. Yeah, it could be. I I it depends on I don't know enough about notion to know um how flexible the integrations are and how sharable the databases are and what controls you can put on the on the databases. Um but Yeah, I I think that is that's their company vision for notion for sure.

**Felipe:** Okay, good. Makes sense.

**Danny:** That's the that's the direction they wanted to go.

**Felipe:** In that sense, notion it's a it's it really has a lot of features, but it's a good at project management. And so, for example, you have specific users, you can give them a specific controls. And so, and and in that sense, I think it's really well suited for for building this type of of middle u

**Danny:** But you you know whether or not you can put say so your like proposal writing workflow and the agents that are involved in it whether or not you can build a dashboard in notion that shows each of those the progress the status of it etc and is integrated with something external to it. I don't I don't know but I think I think there are still probably like userfacing dashboards things that need to be built as part of this.

**Felipe:** Yeah, I do agree. And I

**Danny:** Th probably provides you a lot of the interaction layer, but there, you know, like there's al there's also there's a lot of stuff that you probably want to do that isn't that's associated with the like an AI operating system, but isn't necessarily AI itself. So just like you know the logs of what's happened and you know what what was triggered, you know, what the costs of various things been, that kind of stuff.

**Felipe:** Yeah, I I do agree. It do it does make perfect sense in that sense. And I for me I in specifically for the case of AL I the way it could work is that notion is the middleware where you have actually the dashboard data and you can build the dashboard on top like the specific front end for AL and specific access control for each user. But notion could be like the way that you handle the the dashboard data.

**Danny:** Yeah, potentially way potentially I I I probably see that as like an interim thing. Um Yeah, I I don't think the um I don't think the complexity of of just doing it in a managed database would be much more than that and you get an awful lot of stuff for free. I also think it's not closely coupling all these things together, you know, um not it's not in the long term forcing everything into notion, but it's something to be figured out as this as this happens. I think we're both saying essentially that where this starts is right this is the opportunity. This is the value it's going to create. This is the this is the workflow that's going to be needed. This is how people interact with it. This is from an AI point of view what's what's needed. Then let's just trace down the rest of the stack down to down to the systems and just identify the like initial version of everything that's that's required including integrations MCP the access on the MCP a structured data layer to the all the way to the front end.

**Felipe:** Yeah, I agree. And it start with the specific workflows and be as specific as possible and then you start when you solve one, you can start to build the

**Danny:** Yeah. I think that's always the right way to build the platform because otherwise you fall in this platform trap of building a platform and then waiting to use it which is there's no return on that on that you know.

**Felipe:** Yeah.

**Danny:** But as long you know what you have to do in order to do that first slice around the first workflow you need to have a look at the other things that you're going to do and and so you're not making a decision in the first one that you'd have to like completely change to do the second or or the third one. But as long as there's some commonality between them, you've got a a target architecture in place across all the different components with some flexibility, then yeah, do the first slice, then the next one, and then you're delivering value as you build

**Felipe:** at each step. Yeah.

**Danny:** The whole Yeah. Yeah.

**Felipe:** I agree. And I think that's the point of what in the audit I mentioned as the foundation. You want the foundation is the base so that you can build up the rest so that each workflow is not a specific solution, but it compounds when you add each each slice.

**Danny:** yeah, to totally agree. Yeah, I think I'm I'm just suggesting that that the foundation just needs a few different structural components in it. Um

**Felipe:** I agree.

**Danny:** And yeah, cool. Okay, makes sense. Well, I think you've done a I honest I um I had a look at some of this stuff for for for Ollie and I wrote a diagnosis on it and then I looked at yours and I thought, "Oh, mine's f****** terrible. So I think you genuinely did a very good job on on

**Oliver:** Philipp did spend longer. Danny, you did it without speaking to anyone other than me and just spend time without anyone asking you to do it.

**Danny:** I'm singing his praises. I'm singing his praises for that work and you know like explaining that everything, you know, all my feedback is is is is in context of of of you know what he's done, which is which is very very good. Um but just comes from, you know, a lot of experience doing this stuff.

**Oliver:** Yeah, of course. And it's the bad one as well. Yeah. Yeah. So I think look the next step believe I think we need to work out how to build this out between so what I think is that you there's stuff that you Danny will know that you don't know about enterprise building enterprise software basically um and then there's stuff that you know that Danny doesn't know about architecture and building a sales funnel and stuff because you've kind of done that And so ultimately I think it's going to be best to kind of build this thing together but like build it with the idea of its ultimate commercialization so that it's not just for us. So there's three three phases. Phase one is build the easiest or like simplest part of it to prove the concept which I think is something like the fee proposal tool or like my my kind of update of the fee proposal tool which goes into the project tracker tool. Like that's

**Oliver:** I mean the cost saving on that if you want the ROI that I tell you how much we pay for CAP every year, you know, because you basically just eliminate C, you know, we'd still keep CAP because at the moment I wouldn't want to get rid of it, but all it would all CAP would end up doing is time sheets and like you could get some much cheaper time sheet software that you could use to plug into um if you could make the if you could make the the fee proposal tool really accurate. It sets out the deliverables timeline in which you're going to and the price and then all you need to do is then monitor and all the deliverables could then be your project management tool. You know, you've set them out. It's like this is all we need to do. So, they should then just form the basis of your project management tracker plus standardized pick lists for every different stage because like it's the same every time, you know, like and this is the stuff that gets missed is like you're you're reinventing the wheel every time you do a project. It's they're all the same roughly. That would be the mo for me that's the biggest ROI. It's the proof of concept. It requires a small bit of data layer in the middle. So

**Danny:** it it definitely does. All those things that you've outlined, they need to be like a standard schema in the

**Oliver:** Yeah. in the database. Yeah.

**Danny:** So I think that's phase one. So I would like to maybe just break the quotes back down. Believe a um uh Danny thought that your quote was cheap. I thought it was expensive. Uh but you know that's cuz

**Oliver:** that's cuz I'm used to working with the London Stock Exchange.

**Danny:** Exactly. And I'm used to working with architects. Um, so but can we break it down so we don't have to build all those things at once? Let's try and get phase one done, which is to build one tool that incorporates some elements of this. Phase two will then be to roll out the rest of the it for AL and phase three will be to work out how to like make a commercial application of it that we can then sell onto other people. Um, and Danny, I had this thought on the way I was I just had a swim and I was thinking about this forward deploy engineer. And weirdly, I was thinking like, I wonder what they'd wear cuz we had this guy from our HR company coming out.

**Danny:** That's is that the question?

**Oliver:** Yeah. No, no, no. Wait, hear me out. It makes sense. This guy was in our office and he was dressed in like this like really cheap like suit and I was like, well, he looks like a fish out of water. Like, you know, everybody here is like wearing flip-flops and he was wearing like this really cheap suit and I was like, oh, you know, you kind of like almost want to like make a forward deployed engineers really cool. And then I was like, you don't you don't want them in the company. You want them virtual and I was like Felipe is your forward deployed engineer right because he goes in but he goes in virtually

**Danny:** because you don't need

**Oliver:** well like it doesn't need to be you Felipe but like it you know to start with it could be you know we deploy you into another architecture practice are roughly the same size we know we know most of the problems that have slightly different software stack but you're the forward deployed engineer because you have already demonstrated that the thing you're very good at is the diagnosis and that's what they need and it doesn't need to be like palentist you don't need to go in there and spend a week in there you need to do exactly what you did with us, which is like, you know, 4 hours across a week. Um, and then and then and then it's a proprietary set of things that we've already basically built where you're like, here's the diagnosis, but it basically is going to be a combination of these things that we already know what works and

**Danny:** we already we already know

**Oliver:** we already know what the whole project life cycle database looks like. The same everywhere and I've met many palenteer for deployed engineers and they tend to be young and weird and overpaid.

**Danny:** Yeah. Yeah. But like but don't you think the idea of of having a fully paid but also doing it virtually you don't need to be like in the business I think but like the idea of deployed deployed engineer is very trendy now and I think it makes sense because you don't want to be selling them out the box solutions even though you will sell them an out of the box solution but you want them to make it feel like it's very bespoke. Um I had another thought. Oh yes so I spoke to the guys at Neo yesterday. Neoim do you know Neoim Danny? All right. Okay. They're quite big. They seem to have a load of money. They they've got a team of 70.

**Danny:** Oh, that was on your email. Yeah.

**Oliver:** Yeah. Yeah. Yeah. Um based in like Belgium, I think. So, it's the guy that made Endscape. Um I think he must have sold Nscape. Uh and this is his new venture. Um and he they seem to have a lot of money and they're building like 10 different things. So, most of it's called Neob and they're building like it's not super clear from speaking to them. I've now spoken to them twice and I didn't really I still can't quite work out what they're building. I don't think they know either.

**Danny:** Well, then that's not a great sign.

**Oliver:** Well, they've got a lot of money. Um anyway, they they showed me their neo brain, which was like totally s***. Totally s***.

**Danny:** Mhm.

**Oliver:** Um but they are they have got money and they can do things and so I was like, do we sort of partner with them if we want to roll it out? But I think probably even just saying it out loud, I think no, we build the concept and then we work out how to If there's no one thing with it, if there's no one senior in an organization who can nail the vision of what you're doing, I guarantee the engineers are not that good.

**Oliver:** Well, the neo brain thing was rubbish, but I think probably the neoim software is good. Valentin said that he thought they were they were doing good things. He went to their presentation at that um at the next build that I went to.

**Danny:** Um yeah, I I would I would say

**Oliver:** and also the guy made endscape like he must know a bit what he's talking about.

**Danny:** Yeah, he may maybe. But if They like if they if they can't if they struggle to explain the vision of what they're doing to someone outside the organization then they're struggling to explain it inside the organization as well. And

**Oliver:** who are we? Neoim is pioneering AIdriven building information modeling making architectural design and construction more efficiently and accessible. Our vision to revolutionize BIM technology making it simpler and faster for everyone in the construction industry. This is so generic. Uh we aim to streamline the design process reduce manual effort and increase efficiency bringing BIM into the future. But the guy posted today about how he thinks Revit's going to win. So, I think they might be pivoting around the idea that you plug everything into Revit.

**Danny:** Yeah. But I don't think we're talking about doing BIM stuff either.

**Oliver:** No, no, no, no. We're not. We're 100% not. But they've got like they're just basically trying to build anything and everything.

**Danny:** Yes.

**Oliver:** But I feel like if I told them this idea, they'd just steal it and try and build it because then the other thing was so bad. It was like a lovable spin up and it was like a chatbot. It was rubbish.

**Danny:** And in my in my experience dealing with Ben people, they know more about that than I ever I ever could when it comes to the like foundations of data and software they don't and I think

**Oliver:** no

**Danny:** if they've got money

**Oliver:** then go and get some money to do the stuff that is causing well the that's the other one I told you those guys that had raised 22 million for basically just an idea which was like this but for construction like they didn't have a lot more than the idea that we've got.

**Danny:** Yeah I think I think would want to raise 22 million it's way too much you don't need that much to build this

**Oliver:** you don't I think I I don't I don't think that the broad vague outcomes that they're selling themselves on is the right thing to go to like a bunch of mediumsiz architecture firms. What you want to go and and say this is how much it costs to get a proposal out the door. This is how much it will cost with this like you know massive saving. This is what this causes you at the moment. This is this is what it what it will be. And I think you need you're going with those like specific pain points that you know people have got. Um, and I think the route to being able to do that is is simpler. Um, and I think the there there's not a huge amount of competition around it. There's that thing that you and John showed me the other day where she's that, you know, they essentially just allow chat with your data in the organization. This is a this is a currently unexplored space. We've got to get this thing down on paper because we can go and raise some money for this. Like seriously,

**Danny:** here's my suggestion. We could Why don't we have a workshop for a couple of hours? And we can start with like you know the vision first workflow and then we can go we can map that like down the stack in terms of systems it needs questions we can answer uncertainties that we've got and what the next what the next steps are and actually create that that first slice and come out of it if we come out of that session with a backlog basically like these are all of the tasks this is all the stuff that needs to happen then that gives us what we need to do.

**Oliver:** Makes sense?

**Felipe:** Yes. Okay. Should we do that next week then when John's back?

**Oliver:** Yeah. Is that is that what what do you think, Felipe?

**Felipe:** I do agree because I before we get into it, I think it's it's important to define like the scope and what specifically like go into specifics of if you're going to build it, then what's the step by step and what should be built?

**Oliver:** Yeah. And in terms of your time now, Felipe, because we we've we've finished this is all on top like we finished the work, right? We're very happy with the work that provide. did. So, up until the point where we instruct some new work, um I'm happy for you to like bill us hourly or whatever, you know, um until the point where we reach a new agreement and the new agreement will be some sort of either we employ you to do some more work or it's a collaboration agreement between your company, Danny's company, and our company to build something together with X amount invested and then X amount on the back end or we we just pay you to do it and we take the IP and do you know what I mean? Like there's there's There's a variety of different ways that it would work, but either way, make sure that you're getting paid for your time. So, please, I'm sure you do track your hours, but I'm very happy to Do you want to just send me like an hourly rate so that we know what we're in for for the bit in between this bit while we're deciding what what it is that it is that we're doing next? Um, just let me know an hourly rate.

**Felipe:** Yeah, I'll build a proposal and send it to you. I will check uh and and structure it.

**Oliver:** Cool. Well, perfect. Let's find two hours. I'll happily put an agenda together and I'll share it with you and you can tell what you think and change things around or what whatever, but let's make it collaborative thing. Um, let's grab a mirror board and do it on that.

**Danny:** Yeah. Yeah. Danny, why did you start like the thing that you're actually building? I mean, not that you're not actually building it is like a bloody BIM BIM plugin. Why? Like you know way more about this than you do about BIM. Why did you start with BIM?

**Danny:** Uh, because this was the first problem in the industry that I was that I was exposed to and I also at the time didn't have enough connections into the industry to start to propose something broader and I also just hadn't been exposed to the wider problems. So there's a problem that I knew that existed

**Oliver:** all of the discovery that I did and all the conversations everybody said

**Danny:** I had another really interesting and I you know I said look if I solved it would you buy it and they all said yes so that's why I did that

**Oliver:** you know I know who will buy it often Denny when you solve it we had the demo today with tech on or whatever they're called They're really good. Like everyone was very impressed. I sort of half listened to them and asked them some quite hard questions that they weren't very good at answering, but they apparently it was really good. Techtome AI BIM Checker.

**Danny:** Uhhuh.

**Oliver:** I I think I've emailed you before. You should sell your thing to them. They do everything else except for the bit that you're doing. It wouldn't be the easiest thing to just build it and then sell it to them because they've solved loads of other problems that you would spend loads of time trying to solve. Uh like clash detection, they they do this really cool thing where um it's like what often happens on a project is that somebody will be like, "Oh, do you know what? Actually, to solve this issue, if we just move the core like one meter to the north,

**Danny:** yes,

**Oliver:** that will make everything easier." But it's like quite far through the project. So you basically spend a month with the engineer going like, "Okay, if we move the shear wall and this and this and then the me and people are like, "Wait, hold on. That's moved our D And then what happens in the end is that you all go around, you spend a month, you're like, it was actually better where it was before, but you've just lost a month of fees and like nobody and nothing moves. And so they've got this cool thing where you can just move the core in the architecture model and then it will just tell you all of the things that it's impacting on the structural and the me and model. And I was like that is a really good use case. Like because that was the thing they couldn't give me. I was like this looks cool but like tell me I'm paying for this. What do I get out of it? And they were like from bit they And then and then they were like, "Well, you can kind of talk to the regulations." I was like, "Well, I knew, you know, I was like, Danny's one is already better than that." Uh, and they were like, uh, that was the first one where I was like, you know, they pointed it a thing and I was like, that is a real real pain point and you've solved that. Well done. That's great. Um, but a lot of the other stuff that they've just been doing it for longer than you saw their head. But the bit that they haven't done is they admitted themselves the booming regulations are contradictory and we don't know. We can't read them enough. Like if we can read the model, but can't read the regs. And so you it would be the perfect thing to just sell it to them. They're Japanese, wellunded, got loads of users in Japan coming to the Europe now and like um that would be a good fit for your thing. Um once you finish it,

**Danny:** that's a good idea. Thank you.

**Oliver:** Uh happy to do an intro, but it might be too early.

**Danny:** Yeah, I think too early. Let me think about it. I'll go and have a look at them. But yeah,

**Oliver:** cool.

**Danny:** Um cool. Anyway, Filipe, are you excited about this? You're a hard person to read. Um No, I'm sorry.

**Oliver:** Your excited face and your and your unexited face look quite similar.

**Danny:** No, I'm really excited because I'm really passionate about this because it has worked for me and the fact that if we could scale it up and really create a system out of it, it would be awesome.

**Felipe:** But I think really really really like this is I mean there's of course there's lots of other people working on this problem, but like just even if you start with a a niche market of just architects, there's enough of them to make this a valuable thing. But then the this would engineers MEP like it's exactly the same like there's really really no difference property developers not that different like there's so many applications where it would be useful that you're like oh wow you've we've accidentally found something that is cross- sector

**Oliver:** um that's why I'm excited about

**Danny:** architects buy stuff for architects you know like your in your in your firm you do look and like explore more more broadly at the stuff that's that's available but I think like quite often you know firms of architects like buy stuff that is focused on them. Um it's

**Oliver:** yeah but sometimes we use stuff that's not like so cap's a good example where um it's architects engineers MVP right that's the project managers they sort of target that like a space and this would be the same

**Oliver:** like I don't you know you wouldn't necessarily sell this to lawyers right they're going to have their own systems but like those like services businesses or within built environment I think you just tailor it for that

**Danny:** yes

**Oliver:** um caps on for 100 million quid last year and it's it's rubbish. Um you know this would be better. So um I don't know how much they raised to get to that 100 million exit but

**Danny:** yeah

**Oliver:** you know I if that's that valuable this is more valuable.

**Danny:** I think the key thing for us to consider when we're when we're doing all of this is is interoperability. And so there are what we don't want to do is build a platform that then in a very opinionated way says to organizations and this will replace everything that you've got to do and you do everything in here now because that is a very hard a very hard cell and it's alo also an awful lot of complexity. It's about going in with things that are representative of the domain that that we're in and and the work that happens in it but can be integrated within the tools that they've got the systems that the systems that that they use. You're not asking them to just rip everything up and replace it. You

**Oliver:** concept. So one of the things that Tecton did which was interesting was they were like Oh, you can upload all of your project notes and minutes and stuff to the model to the 3D model. But actually, it was just a reader. So, I it was a bit of a stupid workflow because it doesn't go backwards and forwards. But the thing that we haven't discussed, which is like would be the next thing to maybe conquer is that all of the industries that we've just mentioned have drawings and we haven't quite got on to and I don't we can't bother to do it today, but like how does this interface with either the 3D model environment or the PDF documents of that that are at the end of it the most important output.

**Danny:** Yeah. Well, it depends what you want to do with them. I think

**Oliver:** yeah,

**Danny:** I mean Phil probably the best one to answer that question. What you think because the first step is actually build the operational layer behind it. That's how you handle the the firm's uh workflows. But the actual core work of the firm is the drawings and building the systems. And so those specific work that are more based on design and and working with uh within the building itself that actually has a lot more requirements specifically for designing for decision making and so those type of workflows my belief is that once you set up the operational workflow and it's working integrating the design workflows become a lot easier of course there's many decisions that they have to build with regard to how you operate uh with ArchiCAD how you operate with Revit how you access information uh how you coordinate with uh consultants those those specific workflows become easier as you build the operational side but that should be the next step you should build the operational first because it's the easier and has one of the biggest ROI

**Oliver:** definitely um last question if you're being so there's the forward deployed engineer type idea which I quite like and I don't know Philipe are you sort of aware of that as an idea

**Felipe:** yeah yeah I'm familiar

**Oliver:** yeah um I think there's another bit that you would need to do to roll out which is like you need a sort of cultural champion because you do need a cultural shift

**Danny:** that's what they do

**Oliver:** within a business that's what they do as well basically that yeah yeah so that doing that with that work doing that virtually I suppose you just have to have an educational period and some standard

**Danny:** you do you you you have a combination of things you go in you have an initial session you agree a package of work and you know Felipe does does that and then you know yeah so I think I think all of that solvable. But if you meet like Palanteer forward deployed engineers, they're they they walk around with a massive grin on on their face. They're they're like evangelizing endlessly about the thing, you know. Um Okie do. Right. Thank you very much, guys. I'll speak to you next week.

**Oliver:** Are you going to let us know about the twoour slot?

**Danny:** Yeah. Well, I'll just I'll get Ellen to sort it out, but yes. Yes. Yes.

**Oliver:** Okay. Thanks.

**Danny:** Cheers, guys. Thanks a lot.

**Felipe:** Thanks, Annie. Bye, Ali. Thank you.

**Oliver:** Bye. Cheers.
