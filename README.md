# Seedance 提示词生成器

> AI 视频脚本与分镜提示词生成器 · Claude Skill，同样适用于 ChatGPT / 其它 LLM

**简体中文** | [English](README.en.md)

> 本项目以 [liangdabiao/Seedance2-Storyboard-Generator](https://github.com/liangdabiao/Seedance2-Storyboard-Generator) 为基础，在 60 天内制作 60 个短视频、抖音涨粉 6000 的实战过程中，一点点更新、修改、完善而成。

专业的 **Seedance 2.0** AI 视频脚本与分镜提示词生成 Skill。把一篇小说、文章或一句故事大纲，转换成可直接投喂给字节「小云雀」/ 即梦平台的标准剧本、资产生成提示词和时间轴分镜脚本。

> **可用平台**　国内：即梦、小云雀、LibTV；境外：Dreamina（即梦国际版）、CapCut、Higgsfield。
> 入口示例（小云雀）：App / 网页版 → 创作 → 模式 → **沉浸式短片（Seedance 2.0）**。

## 能做什么

- **文章/故事 → 视频脚本**：将完整文本或简短大纲改编为标准脚本格式（△镜头描述 + 对白 + OS/VO + 闪回 + 字幕）。
- **生成 Seedance 2.0 分镜提示词**：时间轴格式、音画一体、可直接复制使用。
- **多集系列规划**：短剧 5 集 ×15s、长剧 20 集 ×15s 的剧集分解与连续性管理。
- **资产生成提示词**：为 Nana Banana Pro / GPT-image 等图像模型批量生成角色（C01–C99）、场景（S01–S99）、道具（P01–P99）提示词。

## 核心特性

- **11 条生产铁律**（SKILL.md 顶部，最高优先级）：时长分段计算、续接残影加固、无字幕规则、对白时间轴对齐、审核规避、TTS 配音避坑、动作可分性、双人手部锁定、输出排版、声线锁定、**视听语言优先**。
- **17 个提示词模板**（references/seedance-prompt-guide.md）：叙事 / 产品 / 角色 / 风景 / 战争 / 长镜头 / 伪纪录片 / **沉浸式短片（视听一体·八维黄金公式）** 等。
- **视听语言实战技巧库**（references/cinematic-techniques.md，由抖音「AI 视频教程」16 集创作者实操经验蒸馏）：景别分层、16 种运镜→情绪、8 种打光→情绪、7 种构图→作用 映射表，节奏与蒙太奇，活人感 / 情绪表情 / AI 配音公式，一致性硬控四步法，漫剧短剧工业化 SOP。
- **官方指南同步**（2026.05.15 更新）：三类任务基础公式、进阶公式、主体定义（多主体/多素材）、分镜时序、动作描述、特殊字符规范、素材配置，以及 **10+ 条常见问题避坑**（ID 漂移 / 双胞胎 / 字幕 / 风格漂移 / 延长跳变 / 画质劣化 / 发音 / 音色等）。
- **镜头语言、氛围关键词、多模态引用语法（@图片/@视频/@音频）速查表**。

## 目录结构

本仓库同时是一个 **Claude Code 插件**，并自带 marketplace 清单，可一键安装。

```
seedance-prompts-skill/
├── seedance-prompts-skill.zip            # 打包好的技能（用于上传到 Claude；由 CI 自动同步）
├── .claude-plugin/
│   ├── plugin.json                       # 插件清单
│   └── marketplace.json                  # marketplace 清单（自带市场，支持 /plugin 安装）
├── scripts/build-zip.sh                  # 可复现地重建 zip
├── .github/workflows/build-skill-zip.yml # skill 变更时自动重建并提交 zip
└── skills/
    └── seedance-prompts-skill/
        ├── SKILL.md                      # 技能主文件（工作流 + 11 条生产铁律 + 输出格式）
        └── references/
            ├── seedance-prompt-guide.md  # 完整模板库与提示词手册（17 个模板 + 速查表 + 示例 + 官方指南同步）
            └── cinematic-techniques.md   # 视听语言实战技巧库（运镜/光影/构图/节奏/蒙太奇/一致性，创作者实操蒸馏）
```

## 安装

### 方式一：Claude Code · `/plugin` 一键安装（推荐）

在 Claude Code 中执行：

```text
/plugin marketplace add mantoufan/seedance-prompts-skill
/plugin install seedance-prompts-skill@seedance-prompts
```

第一行把本仓库作为 marketplace（名为 `seedance-prompts`）添加进来；第二行从该市场安装 `seedance-prompts-skill` 插件。安装后技能即自动生效，无需手动重启。

### 方式二：Claude Code · 直接对话安装

也可以直接告诉 Claude Code：

> 把 https://github.com/mantoufan/seedance-prompts-skill 安装为我的 skill

Claude Code 会把仓库里的 `skills/seedance-prompts-skill/` 子目录克隆到 `~/.claude/skills/`（全局）或当前项目的 `.claude/skills/`。完成后即可使用。

### 方式三：上传 zip 到 Claude（claude.ai / 桌面端）

从 **[Releases](https://github.com/mantoufan/seedance-prompts-skill/releases/latest)** 或仓库根目录下载 **[`seedance-prompts-skill.zip`](seedance-prompts-skill.zip)**，在 Claude 的「设置 → Capabilities / Skills」处上传该 zip 即可安装。该 zip 顶层是单个 `seedance-prompts-skill/` 文件夹（内含 `SKILL.md` 与 `references/`），符合 Claude 技能上传规范，并由 CI 在 skill 变更时自动保持最新。

### 方式四：手动克隆为本地 Skill

```bash
# 全局安装（对所有项目可用）
git clone https://github.com/mantoufan/seedance-prompts-skill.git /tmp/seedance \
  && cp -r /tmp/seedance/skills/seedance-prompts-skill ~/.claude/skills/

# 或项目级安装
cp -r /tmp/seedance/skills/seedance-prompts-skill .claude/skills/
```

> 说明：Claude 通过 SKILL.md 的 frontmatter `name: seedance-prompts-skill` 识别技能。手动安装复制的是 `skills/seedance-prompts-skill/` 子目录（而非整个仓库），安装后重启 Claude Code 即可加载。

### 方式五：在 ChatGPT / 其他 LLM 上使用（OpenAI 等）

本技能的正文（[SKILL.md](skills/seedance-prompts-skill/SKILL.md) + [seedance-prompt-guide.md](skills/seedance-prompts-skill/references/seedance-prompt-guide.md)）是**与模型无关的纯 Markdown 提示词工程内容**，可在任意大模型上复用：

- **ChatGPT Custom GPT（推荐）**：新建一个 GPT，把 `SKILL.md` 全文粘进 **Instructions**，把 `seedance-prompt-guide.md` 作为 **Knowledge** 文件上传，即可获得与本技能一致的剧本 / 分镜生成能力。
- **ChatGPT Project / 普通对话**：把 `SKILL.md` 作为系统提示或首条消息粘入，再贴上你的小说 / 文章 / 大纲。
- **其它 LLM**（Gemini、DeepSeek 等）同理：将上述内容作为系统提示注入即可。

> 注意：`/plugin` 一键安装、自动触发是 **Claude 专有能力**，ChatGPT 等平台需手动粘贴或自建 Custom GPT。生成结果的 **Seedance 2.0 提示词语法不变**（仍投喂即梦 / 小云雀 / LibTV 等平台）。

## 维护：zip 自动同步

`seedance-prompts-skill.zip` 由源文件打包而成，无需手动维护：

- **CI 自动重建**：GitHub Action [`build-skill-zip.yml`](.github/workflows/build-skill-zip.yml) 监听 `skills/**` 变更，自动重新打包并把刷新后的 zip 提交回 `main`（构建可复现——固定时间戳 + 排序，仅内容变化时才产生差异，不会触发循环）。
- **本地手动重建**：`bash scripts/build-zip.sh`。
- **本地提交时自动重建**（可选）：启用一次 `git config core.hooksPath .githooks`，之后凡提交涉及 `skills/` 的改动，[`.githooks/pre-commit`](.githooks/pre-commit) 会自动重打包并 `git add` 该 zip。

## 触发场景

向 Claude 提出以下任意需求时会自动调用本技能：

1. 把文章 / 故事转换为视频脚本；
2. 生成 Seedance 2.0 分镜提示词；
3. 规划多集 AI 视频系列；
4. 为图像模型创建角色 / 场景 / 道具生成提示词。

## 工作流概览

1. **分析输入** → 判断是完整文本还是大纲，提取主角、冲突、叙事弧、核心梗。
2. **确认制作参数** → 视觉风格、时长、画幅、基调、核心卖点。
3. **生成完整剧本** → 核心梗 / 故事梗概 / 一句话卖点 / 人物小传 / 起承转合 / △格式正文。
4. **创建资产生成计划** → C/S/P 编号 + 图像模型提示词。
5. **生成 Seedance 2.0 分镜脚本** → 时间轴格式 + 素材上传清单 + 结尾帧描述（保证连续性）。

详见 [SKILL.md](skills/seedance-prompts-skill/SKILL.md) 与 [references/seedance-prompt-guide.md](skills/seedance-prompts-skill/references/seedance-prompt-guide.md)。

## 参考

- 火山引擎官方提示词指南：https://www.volcengine.com/docs/82379/2222480?lang=zh
- 视听语言实战技巧库蒸馏自抖音合集「AI 视频教程」（作者：李一帆 /「AI 界人民教师一帆」，16 集），见 [references/cinematic-techniques.md](skills/seedance-prompts-skill/references/cinematic-techniques.md)。

## License

MIT
