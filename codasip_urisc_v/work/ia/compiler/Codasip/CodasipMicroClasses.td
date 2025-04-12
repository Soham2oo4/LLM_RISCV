/**
 * Codasip s.r.o.
 *
 * CONFIDENTIAL
 *
 * Copyright 2025 Codasip s.r.o.
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2025-04-12
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-12 19:55:17
 *                Copyright (C) 2025 Codasip s.r.o.
 */


include "CodasipCustomMicroClasses.td"

// Definition of auto-generated instruction classes

class CodasipMicroClass_sc_divide<dag outs, dag ins>
: CodasipInst<outs,ins>
{
  let Itinerary = Itin_sc_divide;
  let hasDelaySlot = 0;
  let allowInDelaySlot = 1;
}

class CodasipMicroClass_sc_loads<dag outs, dag ins>
: CodasipInst<outs,ins>
{
  let Itinerary = Itin_sc_loads;
  let hasDelaySlot = 0;
  let allowInDelaySlot = 1;
}

class CodasipMicroClass_sc_multiply<dag outs, dag ins>
: CodasipInst<outs,ins>
{
  let Itinerary = Itin_sc_multiply;
  let hasDelaySlot = 0;
  let allowInDelaySlot = 1;
}

class CodasipMicroClass_sc_stores<dag outs, dag ins>
: CodasipInst<outs,ins>
{
  let Itinerary = Itin_sc_stores;
  let hasDelaySlot = 0;
  let allowInDelaySlot = 1;
}

class CodasipMicroClass_<dag outs, dag ins>
: CodasipInst<outs,ins>
{
  let hasNoSchedulingInfo = 1;
}

