cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  death-by-diseases-of-the-musculoskeletal-system-syndrome---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-syndrome---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  death-by-diseases-of-the-musculoskeletal-system-pseudarthrosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-pseudarthrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-syndrome---secondary/output
  death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-pseudarthrosis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-wrist---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-wrist---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-classif---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-classif---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-wrist---secondary/output
  radiculopathy-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: radiculopathy-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-classif---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-epicondylitis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-epicondylitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: radiculopathy-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  fascial-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: fascial-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-epicondylitis---secondary/output
  calcific-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: calcific-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: fascial-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-finger---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-finger---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: calcific-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-meniscu---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-meniscu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-finger---secondary/output
  spontaneous-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: spontaneous-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-meniscu---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-polyarthritis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-polyarthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: spontaneous-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-postlaminectomy---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-postlaminectomy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-polyarthritis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-rheumatism---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-rheumatism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-postlaminectomy---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-spine---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-spine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-rheumatism---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-spondylosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-spondylosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-spine---secondary/output
  secondary-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: secondary-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-spondylosis---secondary/output
  osseous-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: osseous-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: secondary-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-osteomyelitis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-osteomyelitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: osseous-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-continuity---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-continuity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-osteomyelitis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-druginduced---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-druginduced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-continuity---secondary/output
  osteochondropathy-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: osteochondropathy-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-druginduced---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-contracture---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-contracture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: osteochondropathy-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-dislocation---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-dislocation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-contracture---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-degeneration---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-degeneration---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-dislocation---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-tenosynovitis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-tenosynovitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-degeneration---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-deforman---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-deforman---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-tenosynovitis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-arteritis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-arteritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-deforman---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-fusion---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-fusion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-arteritis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-pressure---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-pressure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-fusion---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-lordosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-lordosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-pressure---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-structure---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-structure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-lordosis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-deforming---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-deforming---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-structure---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-dermatomyositis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-dermatomyositis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-deforming---secondary/output
  myelopathy-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: myelopathy-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-dermatomyositis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-colitis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: myelopathy-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-sciatica---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-sciatica---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-colitis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-shoulder---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-shoulder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-sciatica---secondary/output
  pathological-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: pathological-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-shoulder---secondary/output
  bursopathy-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: bursopathy-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: pathological-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-synovium---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-synovium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: bursopathy-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-enteritis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-enteritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-synovium---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-displacement---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-displacement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-enteritis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-involvement---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-involvement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-displacement---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-spondylitis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-spondylitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-involvement---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-hyperostosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-hyperostosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-spondylitis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-crystal---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-crystal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-hyperostosis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-specified---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-crystal---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-polymyalgia---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-polymyalgia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-specified---secondary/output
  fibroblastic-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: fibroblastic-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-polymyalgia---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-muscle---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-muscle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: fibroblastic-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  neopastic-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: neopastic-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-muscle---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-ligament---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-ligament---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: neopastic-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-polyarthrosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-polyarthrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-ligament---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-achille---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-achille---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-polyarthrosis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-pelvi---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-pelvi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-achille---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-osteomalacia---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-osteomalacia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-pelvi---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-disord---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-disord---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-osteomalacia---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-cartilage---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-cartilage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-disord---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-acquired---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-acquired---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-cartilage---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-hypertrophy---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-hypertrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-acquired---secondary/output
  infective-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: infective-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-hypertrophy---secondary/output
  osteopathy-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: osteopathy-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: infective-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  neuropathic-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: neuropathic-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: osteopathy-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  vertebral-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: vertebral-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: neuropathic-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  vasculopathy-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: vasculopathy-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: vertebral-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-ankylosing---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-ankylosing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: vasculopathy-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-fibromatosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-fibromatosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-ankylosing---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-osteochondrosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-osteochondrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-fibromatosis---secondary/output
  haematogenous-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: haematogenous-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-osteochondrosis---secondary/output
  spinal-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: spinal-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: haematogenous-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  reactive-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: reactive-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: spinal-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  atlantoaxial-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: atlantoaxial-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: reactive-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  acute-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: acute-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: atlantoaxial-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-dorsalgia---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-dorsalgia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: acute-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  idiopathic-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: idiopathic-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-dorsalgia---secondary/output
  traumatic-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: traumatic-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: idiopathic-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-postoophorectomy---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-postoophorectomy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: traumatic-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-bursa---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-bursa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-postoophorectomy---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-osteonecrosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-osteonecrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-bursa---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-patella---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-patella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-osteonecrosis---secondary/output
  connective-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: connective-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-patella---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-granuloma---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-granuloma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: connective-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-tuberculosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-tuberculosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-granuloma---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-stenosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-stenosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-tuberculosis---secondary/output
  specific-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: specific-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-stenosis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-postmenopausal---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-postmenopausal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: specific-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-organ---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-organ---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-postmenopausal---secondary/output
  multiple-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: multiple-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-organ---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-malabsorption---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-malabsorption---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: multiple-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-forms---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-forms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-malabsorption---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-inflammatory---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-inflammatory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-forms---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-disuse---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-disuse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-inflammatory---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-fasciitis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-fasciitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-disuse---secondary/output
  internal-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: internal-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-fasciitis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-postradiation---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-postradiation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: internal-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-relapsing---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-relapsing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-postradiation---secondary/output
  cervical-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: cervical-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-relapsing---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-abscess---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: cervical-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-sclerosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-sclerosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-abscess---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-excluding---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-excluding---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-sclerosis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-scoliosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-scoliosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-excluding---secondary/output
  bacterial-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: bacterial-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-scoliosis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-bursitis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-bursitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: bacterial-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  enteropathic-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: enteropathic-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-bursitis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-tendinitis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-tendinitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: enteropathic-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-dysplasia---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-dysplasia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-tendinitis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-chondromalacia---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-chondromalacia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-dysplasia---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-gout---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-gout---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-chondromalacia---secondary/output
  multifocal-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: multifocal-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-gout---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-panniculitis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-panniculitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: multifocal-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-endocrine---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-endocrine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-panniculitis---secondary/output
  synovial-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: synovial-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-endocrine---secondary/output
  foreign-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: foreign-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: synovial-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-rheumatica---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-rheumatica---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: foreign-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-ossifican---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-ossifican---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-rheumatica---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-enthesopathies---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-enthesopathies---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-ossifican---secondary/output
  chronic-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: chronic-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-enthesopathies---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-foramina---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-foramina---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: chronic-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-chondrocalcinosis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-chondrocalcinosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-foramina---secondary/output
  popliteal-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: popliteal-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-chondrocalcinosis---secondary/output
  upper-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: upper-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: popliteal-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  spondylopathy-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: spondylopathy-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: upper-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  recurrent-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: recurrent-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: spondylopathy-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-osteitis---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-osteitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: recurrent-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  loose-death-by-diseases-of-the-musculoskeletal-system---secondary:
    run: loose-death-by-diseases-of-the-musculoskeletal-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-osteitis---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-valgu---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-valgu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: loose-death-by-diseases-of-the-musculoskeletal-system---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-rupture---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-rupture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-valgu---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-hypersensitivity---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-hypersensitivity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-rupture---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-skull---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-skull---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-hypersensitivity---secondary/output
  death-by-diseases-of-the-musculoskeletal-system-instability---secondary:
    run: death-by-diseases-of-the-musculoskeletal-system-instability---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-skull---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-musculoskeletal-system-instability---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
