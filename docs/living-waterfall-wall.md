# Living Waterfall Wall — Complete Design Report

*A premium, architecturally integrated indoor "living waterfall" for the upper entryway ledge of a modern home. Plants appear to emerge from the wall and cascade down an existing walnut-slat feature like flowing water, fed by a concealed in-wall hydroponic reservoir with near-invisible hardware.*

**Prepared:** 2026-07-11 · **Site:** Upper entryway ledge, 60" W × 22" D, over a dark-green walnut-slat feature wall, with a wall cavity above built-in shelving · **Household:** one curious cat.

> **How to read this document.** Sections 1–15 map exactly to the requested deliverables. Every major decision carries a one-line justification inline, and Section 15 consolidates the full rationale. Two owner decisions gate the whole build and are flagged throughout: **(A)** whether to keep the two cat-toxic primaries (Pothos, Monstera) or go fully cat-safe, and **(B)** whether Parrot's Feather is legal in your jurisdiction.

---

## 1. Executive Summary

This design delivers the "water welling from the wall and spilling down" effect **with plants, not moving water** — the cascade is botanical, the plumbing is static and silent, and everything mechanical hides inside the wall behind a removable walnut lid. That single decision (plant-driven cascade over a recirculating waterfall) is what makes the installation quiet, low-maintenance, leak-safe, and genuinely permanent.

The core is a **concealed ~54" × 10" × 8" opaque reservoir** recessed into the cavity above the built-in shelving, holding **~12 gallons at a 5" operating depth**. It runs as a **static deep-water/Kratky system with gentle aeration** — no circulation pump to fail inside a wall. Plants sit in **net pots of LECA** dropped into a **CNC-machined top plate with neoprene collars**; the collars seal light out (killing algae) and seal water in (stopping evaporation and blocking cat access). Above that sits an **inert sub-lid** so the **walnut lid never touches water**, and the walnut lid carries **narrow emergence slots** over each plant plus a **concealed LED channel**.

Lighting is **dual high-CRI (95+) tunable-white LED** — warm 3000 K + neutral 4000 K — hidden in an angled aluminum channel in the lid lip, aimed down, invisible from standing height, with a **second concealed engine ~24–30" down** to light the lower cascade. It targets an **80–150 µmol/m²/s PPFD band over a 12–14 h photoperiod**, and is fully controllable from **Home Assistant** via an **ESP32 running ESPHome** with sunrise/sunset ramps and a warm night-accent scene.

Because a leak inside a wall over cabinetry is the expensive failure mode, the **sensing/automation system is built defensively**: redundant leak detection (independent Zigbee sensors *plus* wired ESPHome probes) drives an **instant local shutoff**, an **undersized freshwater reservoir** makes an overfill physically impossible, and a **mechanical float switch** backs up every level sensor.

For the **cat**, the elevated, sealed, opaque design already removes the serious hazards (reservoir water, cords). The remaining question is the plants: Pothos and Monstera are oxalate-**toxic** (irritating, rarely fatal). The report gives you a **fully cat-safe plant palette** that reproduces the exact aesthetic (Hoya, Peperomia/String-of-Hearts, Swedish ivy, spider plant, ferns, Calathea) as the **recommended** path, with a "keep-toxic-but-control-reach" fallback.

**Estimated cost:** **Budget ~$1,400–2,000** (DIY, EPDM-lined box), **Premium ~$4,000–6,500** (welded HDPE, CNC plate, custom walnut, reef-grade automation), **Dream build ~$10,000–18,000** (professional millwork + install, real trickle option, full monitoring and dosing).

---

## 2. Recommended Overall Design

**System architecture (top to bottom):**

1. **Walnut lid** (removable, lift-off) — matches the existing walnut slats; narrow emergence slots over each plant; routed recess houses the LED channel; all faces sealed (Rubio Monocoat) so it survives the humid environment. It overhangs and shadows the hardware below, so the room sees only walnut and foliage.
2. **Inert sub-lid** (HDPE or acrylic tray) — the true "wet" cover. Catches condensation and drains it back to the reservoir; carries the CNC top plate and LED channel. **The walnut never contacts water.**
3. **CNC top plate + neoprene collars** — machined pockets hold standard net pots; collars seal each stem. This is the light-seal, the evaporation-seal, the cat-seal, and the load-bearer, all in one.
4. **Net pots + LECA (semi-hydro)** — roots wick from the reservoir; crowns stay above the waterline. Parrot's Feather (if used) roots directly in the water as the aquatic "source."
5. **Concealed reservoir** — opaque, ~12 gal at 5" depth, static DWC/Kratky with a small silent air stone. Bulkhead drain + pump-out port for water changes.
6. **In-wall services** — freshwater ATO reservoir in the cabinet below, air pump, ESP32 controller and power supplies in a sealed enclosure outside the wet zone; all cords in conduit to a GFCI outlet.

**Operating mode — the key design decision:** **static water, botanical cascade.** No recirculating waterfall pump. Justification: inside a wall over cabinetry, every moving-water component is a leak/noise/maintenance liability. A static Kratky-style reservoir with a single air stone has essentially no failure points, is silent in an entryway, evaporates slowly (biweekly top-off), and the *visible* "flow" is delivered entirely by trailing foliage — which is what the walnut slats already evoke. (A genuine trickling-water option is offered as a Dream-tier upgrade in §14, with its costs stated honestly.)

---

## 3. Dimensional Sketches (ASCII)

*All dimensions in inches. Not to exact scale; use for proportion and relationships. Verify the real cavity depth on site before fabrication.*

### 3.1 Front elevation (room-facing)

```
        60" ledge width
  |<--------------------------------------------------->|
  |                                                     |
  +=====================================================+  <-- top of ledge / wall
  |   walnut lid (removable), slots over each plant     |
  |   [__]  [__]   [__]    [__]   [__]   [__]  [__]      |  <-- emergence slots (9-12)
  +--\--------------------------------------------/-----+  <-- lid lip (hides LED #1)
  |   \  ~~parrot's feather / fine trailers~~    /       |
  |    \   ((Monstera/Hoya broad anchor))       /        |   UPPER CASCADE ZONE
  |     ~~~   pothos / spider plant strands  ~~~         |   (LED engine #1 grazes here)
  |   ||||  walnut vertical slats (existing)  ||||       |
  | - - - - - - - - - - - - - - - - - - - - - - - - - - |  <-- LED engine #2 (behind a slat)
  |     \\\   continuing cascade of trailing    ///      |   LOWER CASCADE ZONE
  |      \\\   foliage down the slat wall       ///      |   (LED engine #2 grazes here)
  |       ~~~~~ String of Hearts / vines ~~~~~~~         |
  |   ||||  ||||  ||||  ||||  ||||  ||||  ||||  ||||     |
  |                                                     |
  +-----------------------------------------------------+
        (dark green painted wall behind slats)
```

### 3.2 Vertical section through the ledge / reservoir (side view)

```
                     22" ledge depth
        |<------------------------------------->|
        room side                        wall side
   ___________________________________________________
  |   WALNUT LID (lift-off)                            |
  |  _______________________________________________  |
  | | slot |                              LED ch. \  | |  <-- LED in angled channel,
  | |  ||  |   air gap 2-3"                 (aim ↓) | |      aimed down at plants,
  | |  ||  |________________________________________| |      hidden behind lid lip
  | |  ||  net pot + LECA        INERT SUB-LID (drains|
  | |  \/  collar-sealed slot     condensate back in) |
  |~~~~~~~~~~~~~~~~~~~~ water line (5" op.) ~~~~~~~~~~~~|  <-- 5" operating depth
  |   ||        CNC TOP PLATE w/ pockets             ||  ___
  |   ||   ~~~~~~~ ~12 gal opaque reservoir ~~~~~~~   ||   |  8" internal
  |   ||   roots  air stone o o o o (gentle)         ||   |  depth
  |   ||__________________________[bulkhead+valve]___||  _|_
  |________________________________________|__________|      -> drain / pump-out
  |         BUILT-IN SHELVING / CABINET below          |      to cabinet below
  |   [ freshwater ATO jug ]  [air pump] [ESP32 box]   |
  |   [ leak pan + sensors under reservoir ]           |
  |___________________________________________________|
```

### 3.3 Reservoir + top plate — plan view (lid removed)

```
   54" reservoir width (10" internal depth front-to-back)
  |<--------------------------------------------------->|
  +-----------------------------------------------------+
  | (o)   (o)   (O)    (o)    (O)   (o)   (o)   (o)  (o) |  10"
  |  P     F     M      P      H     F     S     P    F  |
  |         [pressure sensor]        [air stone======]  |
  +-----------------------------------------------------+
     ^ net-pot pocket    (O)=broad anchor pocket (3.75")
     (o)=standard pocket (3")     ~5-7" on center

   Legend: P=Pothos/Spider  F=Fine trailer (parrot's feather /
   string of hearts)  M=Monstera/anchor  H=Hoya anchor  S=filler
   XKC capacitive level points epoxied to OUTSIDE of the front wall:
     [LOW-LOW]........[REFILL]..............[HIGH]  (not shown in water)
```

### 3.4 Slot + collar detail (section through one planting site)

```
     walnut lid       ___________
     (slot walls   -->|  |   |  |<-- narrow slot, edges chamfered so
      chamfered)      |  |   |  |    condensate runs back down
                  ____|  | S |  |____
   inert sub-lid |       |tem|       |  <-- sub-lid opening
   CNC plate  ___|  ┌────┴───┴────┐  |___
   pocket        |  │  neoprene   │  |   <-- collar seals stem:
                 |  │   collar    │  |       blocks light (algae),
   net pot  -->  |  │ ╭────────╮  │  |       blocks vapor (evap),
                 |  │ │ LECA   │  │  |       blocks cat access
                 |  │ │ ::::   │  │  |
   water ~~~~~~~~~~~│ │ roots  │ ~~~~~~~~~  <-- pot base ~1" in water
                 |  │ ╰──┬┬────╯  │  |
                 |     roots trail to reservoir
```

---

## 4. Bill of Materials

*Quantities for the ~54" installation. "Tier" shows where the item is used: B=Budget, P=Premium, D=Dream. Prices are 2026 approximate; confirm live quotes.*

### 4.1 Reservoir & structure
| Item | Spec | Qty | Tier | Est. cost |
|---|---|---|---|---|
| Reservoir — EPDM liner + plywood carcass | Firestone PondGard 45 mil, ~25 sq ft + 1/2" ply + underlayment | 1 | B | $80–140 |
| Reservoir — welded food-grade HDPE box | 54×10×8" custom, plastics shop | 1 | P/D | $400–650 |
| Inert sub-lid | HDPE/acrylic tray, drains to reservoir | 1 | all | $60–150 |
| CNC top plate | HDPE/StarBoard (P) or Corian (D), machined net-pot pockets | 1 | all | $120–500 |
| Net pots | 3" (+ a few 3.75" for anchors) | 12–16 | all | $10–20 |
| Neoprene collars | 3"/3.75", light-blocking | 12–16 | all | $10–27 |
| LECA (expanded clay) | ~25–50 L | 1 | all | $25–45 |
| Bulkhead fitting + quarter-turn ball valve | 3/4", EPDM gasket | 1 | all | $20–40 |
| Pump-out camlock / stub (reservoir above drain) | + small transfer pump | 1 | P/D | $40–90 |

### 4.2 Walnut lid
| Item | Spec | Qty | Tier | Est. cost |
|---|---|---|---|---|
| Walnut lid stock | matched to existing slats; slots milled | 1 | all | $120–400 (DIY) / $500–900 (millwork) |
| Finish | Rubio Monocoat Oil Plus 2C (all faces) | 1 | all | $40–70 |
| Locating dowels/pins + concealed latches/magnets | cat-proof, repeatable alignment | set | all | $15–40 |

### 4.3 Lighting
| Item | Spec | Qty | Tier | Est. cost |
|---|---|---|---|---|
| LED strip — warm | Waveform CENTRIC/FilmGrade 95+ CRI 3000K 24V, IP65 in wet zone | ~14 ft | all | $90–160 |
| LED strip — neutral | 95+ CRI 4000–5000K 24V | ~5 ft | all | $40–70 |
| Aluminum channel + frosted diffuser | Muzata V-corner (B/P) / Klus recessed (D) | ~10 ft | all | $40–120 |
| LED driver | Mean Well HLG-100H-24 (IP67, dimmable) | 1 | all | $60–80 |
| Inline fuse + 16–18 AWG wire | 5 A blade fuse | set | all | $15 |
| PAR meter / Photone commissioning | quantum meter or phone app | 1 | P/D | $0–200 |

### 4.4 Electronics / automation
| Item | Spec | Qty | Tier | Est. cost |
|---|---|---|---|---|
| ESP32 + ESPHome, sealed enclosure | controller outside wet zone | 1 | all | $15–30 |
| MOSFET/relay board | logic-level, opto-isolated, fused branches | 1 | all | $15–30 |
| Submersible hydrostatic level sensor | TL-136 / DFRobot Gravity, continuous % | 1 | P/D | $25–60 |
| Capacitive non-contact level points | XKC-Y25-V (LOW-LOW / REFILL / HIGH) | 3 | all | $30–45 |
| Mechanical float switch (overfill failsafe) | interrupts pump power | 1 | all | $8–15 |
| Zigbee leak sensors | Aqara T1 + Sonoff (audible) | 2 | all | $25–40 |
| ESPHome wired leak probes | drip pan / cabinet / bulkhead | 3 | all | $10–20 |
| Water temp probe | DS18B20 waterproof | 1 | all | $8–12 |
| Cavity temp/humidity | SHT31 / BME280 | 1 | all | $8–20 |
| ATO — reef unit | AutoAqua Smart ATO Micro (P) / Tunze Osmolator 3 (D) | 1 | P/D | $80–170 |
| ATO — DIY pump/solenoid + float | 12V peristaltic or NC solenoid | 1 | B | $40–70 |
| Freshwater ATO reservoir | jug/tank, **sized < reservoir freeboard** | 1 | all | $20–60 |
| Nutrient doser (optional, semi-auto) | Kamoer X1/F4 | 1 | D | $120–200 |
| Air pump (silent) + air stone + check valve | 2–4 L/min adjustable | 1 | all | $20–45 |
| Motorized freshwater shutoff valve | fails closed on power loss | 1 | D | $40–90 |
| UPS for ESP32/doser | small | 1 | P/D | $40–80 |
| Cavity exhaust/circulation fan | on smart plug | 1 | D | $20–40 |

### 4.5 Nutrients, testing, cat safety, consumables
| Item | Spec | Qty | Tier | Est. cost |
|---|---|---|---|---|
| Hydroponic nutrients | GH Flora trio or Dyna-Gro Foliage-Pro (grow) | 1 | all | $30–60 |
| pH kit / pH Down | phosphoric acid (store locked) | 1 | all | $15–30 |
| Handheld EC/pH meter | Apera (B/P) / Bluelab Truncheon + pH pen (D) | 1 | all | $30–150 |
| 3% hydrogen peroxide | algae maintenance | 1 | all | $5 |
| GFCI outlet + cord conduit/covers | cat + water safety | set | all | $40–80 |
| Cat drinking fountain | redirection | 1 | all | $25–50 |
| Plants | see §9 (cat-safe palette recommended) | set | all | $150–500 |

---

## 5. Commercial Products to Purchase

**Reservoir & mounting**
- **Firestone PondGard 45 mil EPDM** (fish/plant-safe, 20-yr warranty) for the DIY lined box; or commission a **welded food-grade HDPE / King StarBoard** box from a plastics fabricator (King Plastic CNC, HPI) for the premium build.
- **Net pots (3"/3.75") + neoprene collars** (GardenSupplyGuys / Amazon combo packs); **LECA / hydroton** clay pebbles.
- **CNC top plate:** commission from a local CNC/plastics shop in HDPE/StarBoard (King Plastic offers CNC fabrication) or Corian for the Dream tier.

**Lighting**
- **Waveform Lighting CENTRIC HOME / FilmGrade 95+ CRI 24V strip** (3000K + 4000–5000K reels), **IP65** in the wet zone. (Waveform ABSOLUTE 99-CRI is an option for a daylight-only channel.)
- **Muzata V-shape corner aluminum channel + milky diffuser** (budget/premium) or **Klus recessed corner extrusions** (dream).
- **Mean Well HLG-100H-24** IP67 dimmable driver (HLG-60H-24 if top-engine-only).

**Automation**
- **ESP32** + **ESPHome** (free firmware) + logic-level **MOSFET PWM board** (e.g., "The Hook Up"-style analog controller). No-solder alternative: **Gledopto Zigbee CCT controller**.
- **XKC-Y25-V** non-contact capacitive level sensors; **DFRobot Gravity / TL-136** submersible pressure sensor.
- **Aqara Water Leak Sensor T1** + **Sonoff Zigbee Water Sensor** (built-in siren).
- **AutoAqua Smart ATO Micro** (premium) or **Tunze Osmolator 3** (dream) auto top-off.
- **Kamoer X1 / F4** peristaltic doser (dream, semi-auto).
- **Bluelab Truncheon / Apera** handheld meters; **Bluelab Guardian** inline monitor (dream, monitoring only).

**Cat safety**
- A quality **cat drinking fountain** (Catit/PetSafe) to redirect drinking behavior; **cord covers / spiral wrap / conduit**; **GFCI** outlet; **Grannick's Bitter Apple** (spot-test).

---

## 6. Custom Fabrication Recommendations

1. **Reservoir.** *Premium/Dream:* shop-**welded food-grade HDPE** box — monolithic, no glued seam to fail, 30+ yr life. *Budget/DIY:* **plywood carcass + drop-in EPDM liner** — no seam in the wet zone, tolerant of wood movement, cheapest robust option. Plumb the drain with a **bulkhead fitting**, never a drilled-and-siliconed hole.
2. **CNC top plate.** Machine **HDPE/StarBoard** (water-immune) with recessed pockets sized to your net pots; finish each with a **neoprene collar**. This one part does the sealing, the load-bearing, and the swap-in/swap-out convenience.
3. **Inert sub-lid.** A separate **HDPE/acrylic tray** spanning the reservoir opening, carrying the CNC plate and LED channel, so the **walnut never touches water**. Chamfer/slope so condensate drains back into the reservoir.
4. **Walnut lid.** **Lift-off** (not hinged), milled with **narrow emergence slots** over each pocket, registered to the sub-lid with **locating dowels** so slots realign perfectly every time. Rout an underside recess for the **LED channel**. **Finish all faces** (top, bottom, edges, slot walls) with **Rubio Monocoat Oil Plus 2C** — sealing only the show face would cup the board. (If you skip the sub-lid — not advised — switch to **marine spar varnish** for a waterproof film.)
5. **Slot geometry.** Slots just wide enough for stems/foliage; the walnut overhang shadows the collar and pot rim so **no hardware is visible** from the room.

---

## 7. Electrical Plan

**Two low-voltage domains, both fed from a single GFCI-protected mains outlet in the cabinet below; all mains kept out of the wet cavity.**

- **Lighting domain (24 V DC).** Mean Well HLG-100H-24 driver (mounted dry, outside the cavity) → **24 V** to the LED channels. 24 V chosen over 12 V to halve current and eliminate voltage-drop color/brightness shift over the run. Load: top dual-CCT engine ~40 W + lower engine ~20 W ≈ **60 W**; driver at ~80% derating → 100 W driver gives healthy headroom. **Inline 5 A blade fuse** on the 24 V+ feed; **16–18 AWG** home-run wiring; power longer runs from both ends if end-of-run dimming appears. Common ground bonded between ESP32, MOSFET sources, and PSU negative.
- **Control/actuator domain (12 V + 3.3 V).** ESP32 (ESPHome) on 5 V/3.3 V in a **sealed enclosure**; 12 V for ATO pump/solenoid, air pump, motorized valve. Opto-isolated **relay/MOSFET board**, **fused per branch**. **UPS/battery backup** on the ESP32 (and doser, if used) so a power blip never leaves a pump in an unknown state.
- **Dimming/control.** ESP32 **LEDC hardware PWM** → logic-level MOSFETs switching the 24 V low side at **≥1–2 kHz** (flicker-free). ESPHome `cwww` platform merges the 3000 K + 4000 K channels into one **tunable-white** entity in Home Assistant. Sunrise/sunset ramps; grow scene; warm night-accent scene.
- **Safety.** **GFCI** outlet (water + electricity); **all cords in conduit/cord covers** routed behind cabinetry (cat cord-chew is a top hazard); LED strip is **IP65** in the emergence/reservoir zone; driver is **IP67** and mounted dry. Every water-moving actuator can be **killed locally by the ESP32** on a leak, independent of Wi-Fi/HA.

**Photoperiod & targets:** 12–14 h/day, ≥8 h dark; commission with a PAR meter and **dim each zone to land the whole cascade in ~80–150 µmol/m²/s** (~6–10 mol/m²/day DLI).

---

## 8. Plumbing Plan

**Mode: static reservoir + auto top-off + gravity/pump-out drain. No recirculation loop.**

- **Reservoir:** ~54 × 10 × 8" internal, opaque; **5" operating depth = ~11.7 gal**, cycling 8–16 gal; **2–3" air gap** to the sub-lid.
- **Aeration:** silent **2–4 L/min air pump** → single long air stone (or two small), run lean or on a duty cycle; pump mounted **above the waterline** with a **check valve** to prevent back-siphon. Deliberately below aggressive DWC air rates to limit noise and evaporation.
- **Auto top-off (ATO):** a **separate freshwater reservoir** in the cabinet feeds the main tank; top off with **plain water** (evaporation removes water, not salts). *Critical safety rule:* **the freshwater reservoir holds less than the main reservoir's remaining freeboard**, so even a total ATO failure cannot overflow the wall. Premium: **AutoAqua Smart ATO Micro** (optical + independent). Dream: **Tunze Osmolator 3** (optical + mechanical float). Budget: DIY ESPHome pump/solenoid **with a mechanical float switch physically interrupting pump power** and an ESPHome **max-run timer**.
- **Refill port:** a flush **magnetic/cam-lock walnut plug** in the lid over a funnel/bulkhead — or simply refill the accessible freshwater jug in the cabinet, so routine "refilling" needs no lid access at all. A **vent/overflow standpipe** at the HIGH line, plumbed to the drain, is the passive last-resort overflow.
- **Drain / water changes:** **bulkhead + quarter-turn ball valve** at the reservoir bottom. Since the reservoir sits *above* the cabinet, add a **pump-out port** (camlock + small transfer pump) to push water to a drain. Keep the drain valve **manual** (an automated in-wall drain valve is a flood risk); put a **leak probe right at the bulkhead**.
- **Chemistry (see §11):** EC 0.8–1.2 mS/cm (400–600 ppm), pH 5.8–6.2, run lean; weekly EC/pH + plain-water top-off; full change every 2–3 weeks.

---

## 9. Plant Layout

**Design principle — read the wall as water in three horizontal texture bands:** fine "source" at the top, broad "pools" in the middle, fast "flow" spilling down.

**Span:** 54" → **9–12 planting sites**, ~5–7" on center (denser than normal potted spacing for continuous "flow"; broad anchors get 8–10" clearance, fine trailers can go 4–5").

### 9.1 Recommended — cat-safe palette (given a curious, chewing cat)
This reproduces the intended look **without the oxalate risk**, so vine length never becomes a hazard:

| Band | Role / texture | Plants | Sites |
|---|---|---|---|
| Top "source" | fine, feathery, welling | **Parrot's Feather** *(if legal — roots in water)*; else **Boston Fern** as feathery substitute; interleave **String of Hearts / String of Turtles** | 3–4 |
| Upper-mid anchor | broad, glossy "pools" | **Hoya carnosa** (cat-safe glossy anchor); **Calathea/Maranta** for patterned mass | 1–2 |
| Mid–lower flow | fast cascade bulk | **Spider Plant** + **Swedish ivy (Plectranthus)** + **String of Hearts** | 3 |
| Connective detail | fine texture knitting it together | **Peperomia / String of Turtles**, **Pilea**, ferns | 2–3 |

### 9.2 Alternative — keep the toxic primaries (reach-controlled)
If you keep **Pothos** and **Monstera adansonii**: place them so **trail tips stay above the cat's jump/reach zone**, re-trim as they grow, and accept a residual oral-irritation risk. Roles: Parrot's Feather = fine source (roots in water); Monstera adansonii = broad glossy anchor (1–2, LECA, crown above water); Pothos = fast cascade filler (3 sites). *Satin Pothos (Scindapsus) is also toxic — not a cat-safe swap.*

**Root-zone management:** Parrot's Feather roots sit **directly in the reservoir water** (true aquatic, oxygenator). All aroids/Hoya/ferns go in **net pots of LECA**, roots wicking down to the water, **crowns above the waterline** to prevent rot. Boston Fern: keep the **crown above water**. Calathea is **salt-sensitive — flush regularly**.

**Staging:** plant fast establishers first (Spider Plant/Pothos + Parrot's Feather) for immediate "flow"; slow growers (Hoya, String of Turtles, Peperomia) at the same time but expect coverage over 3–9 months. Weekly trim of Parrot's Feather (aggressive), monthly shaping of the cascade, minimal touch on the slow growers.

> **Two gating flags.** (A) Pothos & Monstera are **toxic** (insoluble calcium oxalates → oral burning, drooling, vomiting; rarely fatal) — the cat-safe palette avoids this entirely. (B) **Parrot's Feather is a regulated invasive** (banned in the EU/UK, prohibited in many US states) — **verify local legality before purchase**, keep fully contained, and **never** dispose of trimmings in drains, compost, or waterways (bag, dry, bin). If prohibited, use **Boston Fern** for the feathery "source" texture.

---

## 10. Lighting Layout

**Goal:** invisible from standing height, healthy foliage growth, dramatic night accent, Home Assistant control.

- **Engine #1 — lid lip (top).** Two 95+ CRI white strips (3000 K + 4000 K) in an **angled/corner aluminum channel with frosted diffuser**, mounted in the underside/front lip of the walnut lid, **aimed down** at the emergence line. The lid overhang keeps the emitter above a standing viewer's sightline — no visible diode, no glare. At 3–6" from emergence this can hit 200–400 PPFD, so **dim it** for shade-adapted foliage.
- **Engine #2 — lower wall (~24–30" down).** A single warm-neutral 95+ CRI strip tucked **behind a walnut slat**, grazing the mid/lower cascade. This is essential: light falls off with the **inverse-square law** (double the distance → ¼ the intensity), so a single top strip would leave the lower trails at ~10–25 PPFD — below maintenance. Two engines flatten the vertical gradient into a usable **80–150 PPFD** band top-to-bottom.
- **Spectrum/CCT:** white, **not blurple** — 3500–4000 K blended renders walnut and foliage beautifully while driving growth across 400–700 nm. **CRI 95+** (R9 present) for premium rendering. **Tunable white:** both channels up = ~3800–4200 K grow scene; warm channel only at ~10–20% = a **2700–3000 K night-accent glow** grazing the cascade (kept dim, inside the photoperiod, to protect the dark period).
- **Power/control:** 24 V, ~60 W total, Mean Well HLG-100H-24; ESP32/ESPHome PWM + MOSFETs → tunable-white entity in HA; 12–14 h photoperiod with 20–30 min **sunrise/sunset ramps**.
- **Heat/wet:** strip lives in the **aluminum channel (heatsink)** — never bonded bare to walnut; **IP65** strip in the humid zone; driver mounted **dry**. Commission with a **PAR meter/Photone** and dim per zone.

---

## 11. Maintenance Guide

| Cadence | Task | Automated? |
|---|---|---|
| **Continuous** | Water level, leak, temp/humidity, aeration monitoring; auto top-off | ✅ Automated + alerted (with hardware failsafes) |
| **Weekly** | Check EC & pH with handheld; dose nutrients; top up freshwater jug; glance at HA dashboard | ❌ Manual / semi-auto (deliberately — see below) |
| **Every 2–3 weeks** | Full drain, rinse, remix fresh nutrient to target EC/pH (sooner if cloudy/smelly); add H₂O₂ maintenance (2–3 mL/gal) if not running microbes | ⚠️ Draining eased by valve/pump-out; refill manual |
| **Monthly** | Wipe reservoir walls & pot bases; inspect collars/lid for light leaks and moisture; recalibrate pH pen; check air stone & tubing/fittings for seepage | ❌ Manual |
| **Quarterly** | Deep clean liner; replace/clean air stone; root-prune Parrot's Feather & runaway roots; verify pump & check-valve | ❌ Manual |
| **Annually** | Replace pH probe (Apera ~2 yr / Bluelab ~4–5 yr) and peristaltic tubing; **test the overfill float and leak-shutoff failsafes actually work** | ❌ Manual |

**Targets:** operating depth 5"; EC **0.8–1.2 mS/cm (400–600 ppm)**; pH **5.8–6.2**; run lean. Top off with **plain water** (top-offs concentrate salts; nutrients go in at the full change).

**Why dosing/pH stay manual (by design):** the reservoir is small and a *mixed* planting tolerates a broad band, while **automated pH dosing is genuinely risky** — a stuck relay or drifting probe can crash the whole reservoir inside a wall before you notice. Convenience option: **HA-triggered semi-auto** peristaltic dosing ("dose 15 mL A + 15 mL B now"), never closed-loop. **Automation eliminates** daily topping/level-watching, leak vigilance, light/aeration scheduling, and early condensation/mold detection. It deliberately does **not** eliminate chemistry decisions, water changes, and periodic inspection of the seals and failsafes — the things that guard against the expensive in-wall leak.

**Home Assistant automations to configure:** (A) low-level auto top-off with analog cross-check + max-run timeout; (B) **leak → kill all pumps + close freshwater valve + critical phone push** (also local in ESPHome so it works if HA/Wi-Fi is down); (C) grow-light sunrise/sunset handoff; (D) temperature-aware aeration duty cycle; (E) cavity high-humidity/mold-risk alert + fan; (F) weekly maintenance reminder.

---

## 12. Estimated Total Project Cost

*Ranges assume the walnut feature wall already exists; lid stock is incremental. Labor is owner-DIY except where noted. Regional pricing and fabrication quotes will move these.*

| Tier | What you get | Estimated total |
|---|---|---|
| **Budget** | EPDM-lined plywood reservoir; HDPE CNC plate (simple) or drilled sub-plate; DIY walnut lid; single + partial second white LED run in Muzata channel; ESP32/ESPHome DIY automation; DIY ATO with mechanical float failsafe; Zigbee + wired leak sensors; Apera handheld; cat-safe common plants (spider plant, pothos-alt, ferns). | **~$1,400–2,000** |
| **Premium** | Shop-welded food-grade HDPE reservoir; CNC HDPE/StarBoard top plate + neoprene collars; custom-milled walnut lid on inert sub-lid, Rubio finish; dual-CCT tunable-white Waveform lighting, two engines, Mean Well HLG-100H-24; full ESP32/ESPHome automation with submersible pressure sensor + XKC points + redundant leak shutoff; **AutoAqua Smart ATO Micro**; Bluelab meter; established, curated cat-safe plant palette; cat fountain, GFCI, conduit. | **~$4,000–6,500** |
| **Dream build** | Professional design + millwork matched to existing walnut; welded HDPE + **Corian** CNC plate; Klus recessed lighting, three zones tunable white; **real trickle-water option** (silent recirc pump + hidden manifold); **Tunze Osmolator 3** ATO + motorized fail-closed shutoff valve + UPS; **Bluelab Guardian** inline monitor + **Kamoer F4** semi-auto dosing; cavity exhaust fan + mold monitoring; professional plant install/establishment + a maintenance visit or two; contingency. | **~$10,000–18,000** |

---

## 13. Risks & Mitigation Strategies

| Risk | Severity | Mitigation |
|---|---|---|
| **In-wall leak** damaging cabinetry/drywall | High | Seamless welded-HDPE or drop-in EPDM (no wet-zone seams); **redundant leak detection** (Zigbee + wired ESPHome) → **instant local shutoff**; leak probe at the bulkhead; drip pan under reservoir. |
| **ATO overfill flood** | High | **Freshwater reservoir sized < main reservoir freeboard** (physically can't overflow); mechanical float interrupts pump power; ESPHome max-run timer; reef-grade ATO with independent optical+float. |
| **Walnut lid warping/mold** over humid tank | Med–High | **Inert sub-lid so wood never touches water**; **finish all faces**; chamfered slots drain condensate back; ventilation path; cavity humidity/mold monitoring + fan. |
| **Algae** in reservoir | Med | **Total light exclusion** — opaque tank + opaque lid + light-blocking collars (the plant slots are where hidden reservoirs fail); H₂O₂ 2–3 mL/gal maintenance; run lean. |
| **Cat drinks nutrient water / chews cords** | Med–High | Sealed opaque lid + collars (no lickable surface); **concentrates locked away**; **cat fountain** as redirection; cords in conduit; **GFCI**; secured (pry-proof) lid; no adjacent perch. |
| **Cat chews toxic plants** | Med | **Cat-safe palette (recommended)**; or keep toxic species with **trails above reach**, re-trimmed; bitter-apple deterrent; ASPCA APCC **(888) 426-4435** posted. |
| **Parrot's Feather illegal/invasive escape** | Med (legal) | **Verify local legality first**; contain indoors; **bag/dry/bin trimmings**, never drains/compost/waterways; substitute Boston Fern if prohibited. |
| **Root rot / low dissolved oxygen** | Med | Crowns above waterline; gentle aeration + air stone; Parrot's Feather oxygenates; DO target 6–8 mg/L. |
| **Light too strong at top / too weak at bottom** | Low–Med | Two concealed engines; **commission with a PAR meter and dim per zone** to the 80–150 band. |
| **Pump/electronics condensation failure** | Med | ESP32 and PSUs in a **sealed enclosure outside the wet zone**; IP65 strip/IP67 driver; capacitive sensors mounted dry on the tank exterior. |
| **Sensor drift (level, EC/pH)** | Low–Med | Layered sensing (analog pressure + capacitive points + mechanical float cross-check); **manual EC/pH spot-checks**, no closed-loop dosing. |

---

## 14. Future Upgrade Opportunities

- **Real trickling water (Dream):** add a small silent low-head recirc pump + hidden drip manifold for genuine water movement — accept added noise, evaporation, maintenance, and light/leak paths; decoupled from the plant cascade so it's purely ambiance.
- **Full closed-loop dosing:** upgrade Kamoer X1 → **F4 multi-channel** with **Bluelab Guardian** monitoring (monitor-only at first; add cautious EC dosing later — keep pH manual).
- **Motorized fail-closed shutoff valve + whole-rig UPS** for hands-off leak safety.
- **Cavity exhaust/circulation fan** on humidity control to further protect the walnut and drywall.
- **Lighting scenes & automation:** circadian tunable-white scenes, presence-based night accent, seasonal photoperiod, and HA voice control.
- **Plant expansion:** rotate in seasonal cat-safe specimens; add air plants (*Tillandsia*) in the negative space; propagate cuttings in the same reservoir.
- **Sensing:** add a **submersible EC/pH monitor** feeding HA dashboards and a nutrient-trend history; leak-rope around the whole cabinet.
- **Aesthetic:** integrate the lid LED with the home's lighting scenes; add a discreet uplight at the base for nighttime drama.

---

## 15. Final Recommendation & Justification

**Build the Premium tier: a welded food-grade HDPE reservoir running as a static deep-water/Kratky system with gentle aeration, a CNC HDPE top plate with neoprene collars, a lift-off walnut lid on an inert sub-lid, dual-CCT 95+ CRI concealed lighting in two engines, and a defensively-designed ESP32/ESPHome automation stack — planted with the cat-safe palette.** Justification for each major decision:

1. **Static water, botanical cascade (no recirc pump).** The "flowing water" look is already carried by the walnut slats and trailing foliage; a real waterfall adds noise, evaporation, and — worst — a moving-water failure point inside a wall over cabinetry. Static Kratky + one air stone has essentially no failure modes and is silent in an entryway. *Real trickle is available as a Dream upgrade, eyes open to its costs.*
2. **~12 gal at 5" depth.** Large enough to buffer EC/pH and stretch top-offs to biweekly, small enough to fit the cavity and keep an ATO failure survivable; 5" suits both net-pot wicking and Parrot's Feather (up to ~6" water).
3. **Welded HDPE (or EPDM-lined) reservoir.** A leak here is the expensive failure — so choose the option with **no wet-zone seam** and decades of life. HDPE is monolithic; EPDM is failure-tolerant of wood movement. Both beat acrylic/aluminum/stock-tank on the metric that matters (leak-proof longevity), and appearance is irrelevant because it's hidden.
4. **CNC top plate + neoprene collars.** One part seals light out (kills algae at the slots — where hidden reservoirs actually fail), seals vapor and cat access in, carries the plant weight, and lets you swap plants in seconds. It's the professional standard and the single highest-leverage component.
5. **Inert sub-lid under the walnut.** A wooden lid over standing water is the durability risk; putting an inert tray between them (and finishing all faces) is what makes a **premium walnut** finish survivable. Condensate drains back to the reservoir instead of into the wood.
6. **Dual-CCT 95+ CRI white lighting, two engines.** White (not blurple) is non-negotiable in a living space and still grows foliage; 95+ CRI makes walnut and greenery look expensive; two engines defeat the inverse-square falloff so the *whole* 2–4 ft cascade stays healthy; tunable white gives a grow scene by day and a warm accent by night. All hidden in an angled channel behind the lid lip.
7. **Defensive automation (leak-first).** Redundant, independently-powered leak detection with **local instant shutoff**, an **undersized freshwater reservoir** that makes overfill physically impossible, and a **mechanical float** behind every sensor. Level/aeration/lighting/top-off are automated for low maintenance; **EC/pH and dosing stay manual/semi-auto** because an automated dosing runaway in a hidden reservoir is a worse risk than the convenience is worth.
8. **Cat-safe plant palette (recommended).** The elevated, sealed design already removes the serious cat hazards (reservoir water, cords). The remaining risk is chewing the toxic primaries — and since vines grow back into reach, the robust answer is to **reproduce the exact aesthetic with non-toxic plants** (Hoya, Peperomia/String-of-Hearts, Swedish ivy, spider plant, ferns, Calathea). If you prefer to keep Pothos/Monstera, do so only with disciplined reach-control. Either way, seal the reservoir, lock the concentrates, conduit the cords, GFCI the outlet, and give the cat its own fountain.
9. **Verify Parrot's Feather legality.** It delivers the best "welling from water" effect but is a **regulated invasive** — confirm it's legal locally, contain it, and bin trimmings; otherwise substitute Boston Fern for the feathery source texture.

**Net:** a permanent, architecturally integrated installation where the water and all hardware disappear into the wall, the plants do the visible work, the cat is safe, and the one genuinely expensive failure mode — an in-wall leak — is engineered against three independent ways.

---

### Appendix — Source-backed notes

The recommendations above synthesize six research streams (botany & plant selection, reservoir/hydroponic engineering, materials & fabrication, grow/accent lighting, automation & sensing, and cat safety). Key sourced facts: insoluble-calcium-oxalate toxicity of Pothos/Monstera (ASPCA); Parrot's Feather invasive/regulated status (USGS, EU IAS list); LECA semi-hydro crown-above-water practice; algae control via total light exclusion; static Kratky/DWC method; inverse-square PPFD falloff; 95+ CRI white horticulture strips (Waveform); Mean Well 24 V driver derating; ESP32/ESPHome PWM tunable-white control; reef-grade ATO redundancy (Tunze/AutoAqua) and dual-technology leak/level sensing; and cat electrical-cord and fertilizer-ingestion hazards (ASPCA APCC (888) 426-4435, Pet Poison Helpline (855) 764-7661). Full source URLs are retained in the underlying research notes and can be appended on request.
