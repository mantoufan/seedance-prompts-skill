# Seedance Prompts Generator

> A full idea → complete short-drama screenplay → AI video-prompt pipeline generator · a Claude Skill that works with ChatGPT / other LLMs too

[简体中文](README.md) | **English**

> Built on top of [liangdabiao/Seedance2-Storyboard-Generator](https://github.com/liangdabiao/Seedance2-Storyboard-Generator), then gradually learned, experimented and iterated into shape through a hands-on run of producing 60 short videos in 60 days and gaining 6,000 Douyin followers.

A professional **Seedance 2.0** AI video script & storyboard prompt generator Skill, covering the full pipeline **idea → complete short-drama screenplay → AI video prompts → finished video**. Upstream, it can write a complete short drama from a one-line idea or a novel (episode count is configurable — typically 50-100 episodes, 1-3 min each, conforming to China's NRTA micro-drama standards; genre / paywall cliffhangers / satisfaction matrix / villain system / compliance / overseas); downstream, it turns the screenplay, an article, or a story outline into a standard screenplay, asset-generation prompts, and timeline storyboards — ready to feed straight into ByteDance's "Xiaoyunque" (小云雀) / Jimeng platform.

> **Where it's available**　In China: Jimeng (即梦), Xiaoyunque (小云雀), LibTV; Overseas: Dreamina (Jimeng's global edition), CapCut, Higgsfield.
> Entry example (Xiaoyunque): App / Web → Create → Mode → **Immersive Short Film (Seedance 2.0)**.

## What it does

Covers the full pipeline **idea → complete short-drama screenplay → AI video prompts → finished video**:

- **(Upstream · optional) one-line idea / novel → full short-drama screenplay**: from genre selection to per-episode writing, self-review, compliance check and overseas adaptation — a complete literary screenplay (configurable episode count, typically 50-100; per-episode length follows China's NRTA micro-drama standards; progressive command flow `/start /plan /characters /outline /episode /review /compliance /export`).
- **Article/story → video script**: adapt full text or a short outline into the standard screenplay format (△ shot descriptions + dialogue + OS/VO + flashbacks + subtitles).
- **Generate Seedance 2.0 storyboard prompts**: timeline format, audio-visual integrated, copy-paste ready.
- **Multi-episode series planning**: episode breakdown and continuity management for short series (5 × 15s) or long series (20 × 15s).
- **Asset-generation prompts**: batch prompts for image models like Nana Banana Pro / GPT-image — characters (C01–C99), scenes (S01–S99), props (P01–P99).

## Key features

- **12 production iron rules** (top of SKILL.md, highest priority): duration/segment math, continuation-ghosting reinforcement, no-subtitle rule, dialogue timeline alignment, moderation avoidance, TTS dubbing pitfalls, action separability, two-person hand locking, output formatting, voice-line locking, **cinematic-language first**, **prompt-as-visual-language / de-AI-look**.
- **17 prompt templates** (references/seedance-prompt-guide.md): narrative / product / character / scenery / war / long-take / mockumentary / **immersive short film (audio-visual integrated · 8-dimension golden formula)**, and more.
- **Cinematic-technique playbook** (references/cinematic-techniques.md, distilled from a 17-episode Douyin "AI video tutorial" series by a practitioner): shot-size layering, 16 camera moves → emotion, 8 lighting setups → emotion, 7 story-composition types → effect, rhythm & montage, "human-feel" / micro-expression / AI-dubbing formulas, the 4-step consistency lock, a manhua/short-drama industrial SOP, and **AI short-drama director's thinking** (five attention hooks + short-drama Agent / character asset library / storyboard-node workflow).
- **Prompt-craft & realism playbook** (references/prompt-craft-and-realism.md, distilled from a 37-episode Douyin series by a practitioner): model-mechanism hacks (misinterpretation / word-order priority / perturbation words / robustness break / pseudo-perspective / time words / feature collapse / reverse prompting), lighting control, JSON-structured generation, prompt/style reverse-engineering, de-AI-look (anti-staged feel / foreground occlusion / subtractive aesthetics / word-trimming), data-driven color grading, action & character/voice consistency, and director's mindset.
- **Seedance 2.0 prompt cookbook** (references/seedance2-prompt-cookbook.md, distilled from a 14-episode Douyin "Seedance2 lessons" series): copy-ready "keyword-trigger" recipes — camera-move / speed / fast-cut / composition / lighting recipe tables, anti-collapse universal formulas (character / scene / anime structures), plus 8 short-drama troubleshooting fixes (audio-first sync, 3-layer prompt structure, emotion progression, spatial consistency, multi-person layering, one-asset-one-job, the 3-beat payoff, off-screen action).
- **AI portrait-realism keyword library** (references/portrait-realism-details.md, distilled from the Douyin "AI visual realism" series and others): copy-ready facial close-up keywords (eyes / lips / nose-cheek / hair), an anti-"plastic-skin" checklist, the 8-step micro-expression "write the emotion-change process" framework, and a "don't keyword-stuff → structure + relighting + multi-angle" workflow for lifelike characters.
- **Short-drama screenwriting module (upstream)** (references/short-drama-screenwriting.md + references/short-drama/, adapted from the MIT open-source [0xsline/short-drama](https://github.com/0xsline/short-drama)): 13 genres + overseas cultural mapping, golden opening rules, 5 paywall patterns, the 4-stage rhythm wave, the 5-type satisfaction matrix, the 4-tier villain system, 5 hook types, and a compliance red-line checklist (aligned with China's 2021 Online Short-Video Content Review Standards, with a **one-time, non-blocking compliance risk warning**) — turn a one-line idea into a full screenplay (configurable episode count, typically 50-100), then hand off seamlessly to the downstream video stage (same △ + shot-size format).
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
        ├── SKILL.md                      # main skill file (workflow + 12 iron rules + output format)
        └── references/
            ├── seedance-prompt-guide.md     # full template library & prompt manual (17 templates + cheatsheets + examples + official sync)
            ├── cinematic-techniques.md      # cinematic-language playbook (camera/lighting/composition/rhythm/montage/consistency/director thinking)
            ├── prompt-craft-and-realism.md  # prompt-craft & realism playbook (model-mechanism hacks / de-AI-look / grading / consistency / director mindset)
            ├── seedance2-prompt-cookbook.md # Seedance 2.0 prompt cookbook (camera/lighting/universal formulas + 8 short-drama troubleshooting fixes)
            ├── portrait-realism-details.md  # AI portrait-realism keyword library (eyes/lips/nose-cheek/hair/skin/micro-expression + structure+relight+multi-angle workflow)
            ├── short-drama-screenwriting.md # Short-drama screenwriting (upstream): command flow + 8 methodology docs + → video handoff
            └── short-drama/                 # short-drama screenwriting methodology (adapted from 0xsline/short-drama, MIT)
                ├── genre-guide.md / opening-rules.md / paywall-design.md / rhythm-curve.md
                ├── satisfaction-matrix.md / villain-design.md / hook-design.md / compliance-checklist.md
                └── LICENSE                  #   upstream MIT copyright (© 2025 0xsline)
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

## Usage & examples

After installing (see above), just describe what you want to Claude in natural language and the skill is invoked automatically. Two entry points:

- **Write a short drama from scratch (upstream)**: say "write me an XX-genre short drama / start from genre selection" → enter the progressive command flow. You can also use the slash commands explicitly: `/start` genre → `/plan` story skeleton → `/characters` cast → `/outline` episode directory → `/episode N` per-episode script → `/review N` self-check → `/compliance` → `/export`; `/overseas` switches to the overseas mode at any stage.
- **Turn existing material into video (downstream)**: paste a novel / article / outline and say "convert this into a Seedance video script / generate storyboard prompts" → get a standard screenplay + C/S/P asset prompts + timeline storyboards directly.

### Examples

The four examples below chain into one full pipeline: from a one-line pitch for a "returning war god + cute baby" short drama, to a per-episode script, then extracting assets and converting to a Seedance storyboard. Click to expand the real outputs (Chinese, as the skill outputs).

<details>
<summary><b>① Upstream · genre + story skeleton</b> (<code>/start</code> → <code>/plan</code>)</summary>

**Input:**

> Write me a "returning war god + cute baby" short drama, female-audience, 60 episodes, starting from genre selection.

**Output (excerpt):**

```markdown
# 🎬 创作方向确认
- 题材组合：战神归来 + 萌宝（赘婿逆袭向）
- 目标受众：女频   ·   故事基调：爽燃 + 温情
- 结局类型：大团圆   ·   集数规模：60 集（标准）

# 📋 创作方案（/plan 节选）
剧名备选：①《战神归来宠妻日常》②《五年之约》③《爹地，妈咪又被欺负了》
一句话故事线：戍边五年的战神秦烈归来，发现妻子苏晚为他生下女儿念念，
              却在豪门苏家受尽羞辱——他要带妻女，把欠她们的全讨回来。
三幕结构（60 集）：1-15 建置 / 16-45 对抗 / 46-60 高潮
付费卡点（💰）：第 3 集（身份即将揭露）、第 8 集（念念生死一线）…
爽点矩阵：身份碾压 + 打脸复仇 + 情感爆发
```

</details>

<details>
<summary><b>② Upstream · per-episode script</b> (<code>/episode 1</code>, △ format)</summary>

**Input:** `/episode 1`

**Output (excerpt):**

```markdown
# 第1集：归家即羞辱
> 本集关键词：归来 / 打脸 / 护父   ｜   本集爽点：身份碾压（铺垫）

## 场次一
**场景：** 内景 · 苏家别墅·宴会厅 · 夜
**出场人物：** 秦烈、苏晚、念念、苏母

△ （全景）水晶灯下宾客云集，秦烈一身洗得发白的旧军装站在门口，格格不入。
**苏母**（冷笑）："五年不回，还以为死在外头了。"
△ （特写）四岁念念攥紧小拳头，挡在秦烈身前。
**念念**（奶声奶气，却很倔）："不许凶我爸爸！我爸爸是大英雄！"
♪ 音乐提示：低沉弦乐渐起，暗藏压迫感

> 🎣 本集钩子：秦烈旧手机震动，屏幕显示"军部·特急"。
```

</details>

<details>
<summary><b>③ Downstream · asset-generation prompts</b> (C/S/P, for Nano Banana Pro / GPT-image)</summary>

**Input:**

> Turn episode 1 into video; first give the character and scene generation prompts.

**Output (excerpt):**

```markdown
### C01 — 秦烈·正面全身（角色一致性参考）
Cinematic photorealistic style with dramatic lighting，
32 岁亚洲男性，短寸黑发，剑眉星目，眉骨有一道浅疤；旧式军绿夹克、挺拔军姿；
真实感：可见毛孔、皮肤纹理自然、轻微胡茬、自然油光，非塑料感；
9:16 竖屏，影棚柔光，电影质感。

### S01 — 苏家别墅·宴会厅·夜（场景参考）
Cinematic photorealistic style，欧式豪华宴会厅，巨型水晶吊灯，大理石地面反光，
香槟塔与宾客虚化背景，冷暖对比光；9:16 竖屏，电影级布光。

### P01 — 旧军用手机（道具）
写实风格，老旧三防军用手机，金属边框磨损，屏幕亮起"军部·特急"红色来电，微距特写。
```

</details>

<details>
<summary><b>④ Downstream · Seedance 2.0 timeline storyboard</b> (audio-visual integrated, feed to Xiaoyunque / Jimeng)</summary>

**Input:**

> Generate the Seedance 2.0 storyboard prompt for episode 1, scene 1.

**Output:**

```text
画面无任何字幕。

电影写实风格，15秒，9:16竖屏，豪门宴会厅冷暖对比、暗藏压迫的氛围

0-3秒：场景建立 - 缓慢推镜头，水晶灯下宾客云集，秦烈一身旧军装立于门口格格不入，环境人声渐弱

3-6秒：冲突引入 - 中景切近景，苏母嫌恶别过脸，苏母（冷笑）："五年不回，还以为死在外头了。"

6-9秒：情绪反击 - 低角度特写，四岁念念攥拳挡在父亲身前，念念（倔强奶音）："不许凶我爸爸！我爸爸是大英雄！"

9-12秒：人物定调 - 跟镜头下蹲，秦烈揉女儿的头，眼神冷冷扫过全场

12-15秒：钩子落版 - 特写，秦烈口袋里旧手机骤然亮起"军部·特急"，红光映在他眼底

【声音】低沉弦乐渐起暗藏压迫 + 宴会厅环境人声/高跟鞋声/手机震动 + 男声沉稳、童声清亮倔强、妇人声尖刻

【参考】@图片1 秦烈面部与军装一致性，@图片2 宴会厅空间布局，@图片3 手机来电特写
```

> For episode 2+, use `将@视频1延长15s` and upload the previous episode as a video reference to keep character / scene continuity.

</details>

> Already have a novel / article / outline? **Skip the upstream** — just paste the text and say "convert to a Seedance storyboard", starting from the downstream flow in examples ③④.

## Workflow overview

1. **Analyze input** → determine full text vs. outline; extract protagonist, conflict, narrative arc, core hook.
2. **Confirm production parameters** → visual style, duration, aspect ratio, tone, core selling point.
3. **Generate full screenplay** → core hook / synopsis / one-line pitch / character bios / story arc / △-format body.
4. **Create asset-generation plan** → C/S/P numbering + image-model prompts.
5. **Generate Seedance 2.0 storyboards** → timeline format + material upload list + ending-frame description (for continuity).

See [SKILL.md](skills/seedance-prompts-skill/SKILL.md) and [references/seedance-prompt-guide.md](skills/seedance-prompts-skill/references/seedance-prompt-guide.md).

## References

- Volcengine official prompt guide: https://www.volcengine.com/docs/82379/2222480?lang=zh
- The cinematic-technique playbook is distilled from the Douyin series "AI 视频教程" (by 李一帆, 17 episodes); see [references/cinematic-techniques.md](skills/seedance-prompts-skill/references/cinematic-techniques.md).
- The prompt-craft & realism playbook is distilled from the Douyin series "刺猬星球superi · ai创作者的乌托邦" (37 episodes); see [references/prompt-craft-and-realism.md](skills/seedance-prompts-skill/references/prompt-craft-and-realism.md).
- The Seedance 2.0 prompt cookbook is distilled from the Douyin series "Seedance2 教学计划" (by 张百川AI, 14 episodes); see [references/seedance2-prompt-cookbook.md](skills/seedance-prompts-skill/references/seedance2-prompt-cookbook.md).
- The AI portrait-realism keyword library is distilled from the Douyin series "AI视觉真实感系列" (by 啊布 / AI短剧实战派) and creators such as Jac.key; see [references/portrait-realism-details.md](skills/seedance-prompts-skill/references/portrait-realism-details.md).
- The short-drama screenwriting module is adapted from the open-source Claude Skill [0xsline/short-drama](https://github.com/0xsline/short-drama) (micro-drama screenwriting skill, MIT License, © 2025 0xsline); see [references/short-drama-screenwriting.md](skills/seedance-prompts-skill/references/short-drama-screenwriting.md) and [references/short-drama/](skills/seedance-prompts-skill/references/short-drama/) (upstream LICENSE preserved).

> The playbooks above are distilled from creators' public videos/collections (captions, on-screen text and images); the short-drama screenwriting module is adapted from 0xsline/short-drama (MIT). Copyright belongs to the original authors; for study and research only.

## License

[CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) (Attribution-NonCommercial 4.0 International). You may use, share, and adapt this material **with attribution and source credit**, **for non-commercial purposes only — commercial use is NOT permitted**. See [LICENSE](LICENSE).

**Attribution requirement**: when using, sharing, or adapting this project (including its prompts, templates, and methodology), keep the following source credit (copy-paste):

```
Adapted from / partially uses mantoufan's seedance-prompts-skill
Source: https://github.com/mantoufan/seedance-prompts-skill
License: CC BY-NC 4.0 (Attribution-NonCommercial)
```

> Exception: the short-drama screenwriting module (`skills/seedance-prompts-skill/references/short-drama/`) is adapted from [0xsline/short-drama](https://github.com/0xsline/short-drama); that upstream portion remains under its original MIT License (© 2025 0xsline), with its LICENSE file preserved.
