# Seedance Prompts Generator

> An AI video script & storyboard prompt generator · a Claude Skill that works with ChatGPT / other LLMs too

[简体中文](README.md) | **English**

> Built on top of [liangdabiao/Seedance2-Storyboard-Generator](https://github.com/liangdabiao/Seedance2-Storyboard-Generator), then iteratively updated, revised and refined through a hands-on run of producing 60 short videos in 60 days and gaining 6,000 Douyin followers.

A professional **Seedance 2.0** AI video script & storyboard prompt generator Skill. It turns a novel, an article, or a one-line story outline into a standard screenplay, asset-generation prompts, and timeline storyboards — ready to feed straight into ByteDance's "Xiaoyunque" (小云雀) / Jimeng platform.

> **Where it's available**　In China: Jimeng (即梦), Xiaoyunque (小云雀), LibTV; Overseas: Dreamina (Jimeng's global edition), CapCut, Higgsfield.
> Entry example (Xiaoyunque): App / Web → Create → Mode → **Immersive Short Film (Seedance 2.0)**.

## What it does

- **Article/story → video script**: adapt full text or a short outline into the standard screenplay format (△ shot descriptions + dialogue + OS/VO + flashbacks + subtitles).
- **Generate Seedance 2.0 storyboard prompts**: timeline format, audio-visual integrated, copy-paste ready.
- **Multi-episode series planning**: episode breakdown and continuity management for short series (5 × 15s) or long series (20 × 15s).
- **Asset-generation prompts**: batch prompts for image models like Nana Banana Pro / GPT-image — characters (C01–C99), scenes (S01–S99), props (P01–P99).

## Key features

- **11 production iron rules** (top of SKILL.md, highest priority): duration/segment math, continuation-ghosting reinforcement, no-subtitle rule, dialogue timeline alignment, moderation avoidance, TTS dubbing pitfalls, action separability, two-person hand locking, output formatting, voice-line locking, **cinematic-language first**.
- **17 prompt templates** (references/seedance-prompt-guide.md): narrative / product / character / scenery / war / long-take / mockumentary / **immersive short film (audio-visual integrated · 8-dimension golden formula)**, and more.
- **Cinematic-technique playbook** (references/cinematic-techniques.md, distilled from a 16-episode Douyin "AI video tutorial" series by a practitioner): shot-size layering, 16 camera moves → emotion, 8 lighting setups → emotion, 7 story-composition types → effect, rhythm & montage, "human-feel" / micro-expression / AI-dubbing formulas, the 4-step consistency lock, and a manhua/short-drama industrial SOP.
- **Official guide sync** (updated 2026.05.15): three task-type base formulas, the advanced formula, subject definition (multi-subject / multi-asset), shot sequencing, action description, special-character syntax, asset configuration, and **10+ common-issue fixes** (ID drift / twins / subtitles / style drift / extension jumps / quality decay / pronunciation / voice timbre, etc.).
- **Quick-reference tables** for camera language, atmosphere keywords, and multimodal reference syntax (@image / @video / @audio).

## Repository layout

This repo is also a **Claude Code plugin** with a self-contained marketplace manifest, so it installs in one step.

```
seedance-prompts-skill/
├── seedance-prompts-skill.zip            # packaged skill (upload to Claude; auto-synced by CI)
├── .claude-plugin/
│   ├── plugin.json                       # plugin manifest
│   └── marketplace.json                  # marketplace manifest (self-hosted, enables /plugin install)
├── scripts/build-zip.sh                  # reproducibly rebuilds the zip
├── .github/workflows/build-skill-zip.yml # auto-rebuilds & commits the zip on skill changes
└── skills/
    └── seedance-prompts-skill/
        ├── SKILL.md                      # main skill file (workflow + 11 iron rules + output format)
        └── references/
            ├── seedance-prompt-guide.md  # full template library & prompt manual (17 templates + cheatsheets + examples + official sync)
            └── cinematic-techniques.md   # cinematic-language playbook (camera/lighting/composition/rhythm/montage/consistency)
```

## Installation

### Option 1: Claude Code · one-click `/plugin` install (recommended)

In Claude Code, run:

```text
/plugin marketplace add mantoufan/seedance-prompts-skill
/plugin install seedance-prompts-skill@seedance-prompts
```

The first line adds this repo as a marketplace (named `seedance-prompts`); the second installs the `seedance-prompts-skill` plugin from it. The skill takes effect automatically — no manual restart needed.

### Option 2: Claude Code · install by chat

You can also just tell Claude Code:

> Install https://github.com/mantoufan/seedance-prompts-skill as my skill

Claude Code will clone the repo's `skills/seedance-prompts-skill/` subdirectory into `~/.claude/skills/` (global) or the current project's `.claude/skills/`.

### Option 3: upload the zip to Claude (claude.ai / desktop)

Download **[`seedance-prompts-skill.zip`](seedance-prompts-skill.zip)** from the **[Releases](https://github.com/mantoufan/seedance-prompts-skill/releases/latest)** page or the repo root, then upload it under Claude's **Settings → Capabilities / Skills**. The zip's top level is a single `seedance-prompts-skill/` folder (containing `SKILL.md` and `references/`), matching Claude's skill-upload format, and CI keeps it up to date whenever the skill changes.

### Option 4: manual clone as a local Skill

```bash
# Global install (available to all projects)
git clone https://github.com/mantoufan/seedance-prompts-skill.git /tmp/seedance \
  && cp -r /tmp/seedance/skills/seedance-prompts-skill ~/.claude/skills/

# Or project-level install
cp -r /tmp/seedance/skills/seedance-prompts-skill .claude/skills/
```

> Note: Claude identifies the skill via the SKILL.md frontmatter `name: seedance-prompts-skill`. Manual install copies the `skills/seedance-prompts-skill/` subdirectory (not the whole repo); restart Claude Code after copying to load it.

### Option 5: use with ChatGPT / other LLMs (OpenAI, etc.)

The skill's body ([SKILL.md](skills/seedance-prompts-skill/SKILL.md) + [seedance-prompt-guide.md](skills/seedance-prompts-skill/references/seedance-prompt-guide.md)) is **model-agnostic, plain-Markdown prompt-engineering content** that can be reused on any LLM:

- **ChatGPT Custom GPT (recommended)**: create a GPT, paste the full `SKILL.md` into **Instructions**, and upload `seedance-prompt-guide.md` as a **Knowledge** file — you get the same script / storyboard generation behavior.
- **ChatGPT Project / regular chat**: paste `SKILL.md` as the system prompt or first message, then add your novel / article / outline.
- **Other LLMs** (Gemini, DeepSeek, etc.) work the same way: inject the content as a system prompt.

> Note: one-click `/plugin` install and auto-invocation are **Claude-only** capabilities; on ChatGPT and others you paste manually or build a Custom GPT. The generated **Seedance 2.0 prompt syntax is unchanged** (still fed to Jimeng / Xiaoyunque / LibTV, etc.).

## Maintenance: zip auto-sync

`seedance-prompts-skill.zip` is generated from the source — no manual upkeep:

- **CI rebuild**: the GitHub Action [`build-skill-zip.yml`](.github/workflows/build-skill-zip.yml) watches `skills/**`, repackages, and commits the refreshed zip back to `main` (reproducible build — fixed timestamps + sorted entries, so only content changes produce a diff, and the bot commit cannot re-trigger the loop).
- **Local rebuild**: `bash scripts/build-zip.sh`.
- **Local auto-rebuild on commit** (optional): enable once with `git config core.hooksPath .githooks`; thereafter any commit touching `skills/` triggers [`.githooks/pre-commit`](.githooks/pre-commit) to repackage and `git add` the zip.

## When it triggers

The skill is invoked automatically when you ask Claude to:

1. Convert an article / story into a video script;
2. Generate Seedance 2.0 storyboard prompts;
3. Plan a multi-episode AI video series;
4. Create character / scene / prop generation prompts for image models.

## Workflow overview

1. **Analyze input** → determine full text vs. outline; extract protagonist, conflict, narrative arc, core hook.
2. **Confirm production parameters** → visual style, duration, aspect ratio, tone, core selling point.
3. **Generate full screenplay** → core hook / synopsis / one-line pitch / character bios / story arc / △-format body.
4. **Create asset-generation plan** → C/S/P numbering + image-model prompts.
5. **Generate Seedance 2.0 storyboards** → timeline format + material upload list + ending-frame description (for continuity).

See [SKILL.md](skills/seedance-prompts-skill/SKILL.md) and [references/seedance-prompt-guide.md](skills/seedance-prompts-skill/references/seedance-prompt-guide.md).

## References

- Volcengine official prompt guide: https://www.volcengine.com/docs/82379/2222480?lang=zh

## License

MIT
