Don't add styles unless necessary. When necessary, keep styles minimal and mimic projects' existing aesthetics.

As always, don't make any design decisions. Do your best to reuse components I've written. If something is starting to be consistent, move it to a component. Leave anything else and make note of it for me.

I am a believer in the [suckless philosophy](https://suckless.org/philosophy/), but appreciate peer review. This means *no bloat*, but if there is a library or package already written, it's okay to include so long as it is: light (low impact on performance), popular (an extensive community and wide recognition—generally >1k git stars), and modern (minimal deprecation, active development; the exception being ROBUST and actively-used codebases).

*As you go,* write comments and markdown files for me. Don't put this off until the end; there's a chance we run out of tokens. I am an experienced developer and will triple-check your decisions, but you should be sure of them first. Your explanations should be written such that a new developer could understand the entire codebase using them. (Keep these to markdown—in-code comments should be as brief as possible.)

<!-- context7 -->
Use Context7 MCP to fetch current documentation whenever the user asks about a library, framework, SDK, API, CLI tool, or cloud service -- even well-known ones like React, Next.js, Prisma, Express, Tailwind, Django, or Spring Boot. This includes API syntax, configuration, version migration, library-specific debugging, setup instructions, and CLI tool usage. Use even when you think you know the answer -- your training data may not reflect recent changes. Prefer this over web search for library docs.

Do not use for: refactoring, writing scripts from scratch, debugging business logic, code review, or general programming concepts.

## Steps

1. Always start with `resolve-library-id` using the library name and the user's question, unless the user provides an exact library ID in `/org/project` format
2. Pick the best match (ID format: `/org/project`) by: exact name match, description relevance, code snippet count, source reputation (High/Medium preferred), and benchmark score (higher is better). If results don't look right, try alternate names or queries (e.g., "next.js" not "nextjs", or rephrase the question). Use version-specific IDs when the user mentions a version
3. `query-docs` with the selected library ID and the user's full question (not single words)
4. Answer using the fetched docs
<!-- context7 -->
