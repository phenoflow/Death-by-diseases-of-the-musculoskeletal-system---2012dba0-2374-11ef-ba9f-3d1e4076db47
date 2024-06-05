# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"M14.4","system":"icd10"},{"code":"M73.8","system":"icd10"},{"code":"M49.8","system":"icd10"},{"code":"M46.1","system":"icd10"},{"code":"M63","system":"icd10"},{"code":"M21.1","system":"icd10"},{"code":"M09.0","system":"icd10"},{"code":"M79","system":"icd10"},{"code":"M90.3","system":"icd10"},{"code":"M84.4","system":"icd10"},{"code":"M62.5","system":"icd10"},{"code":"M90.6","system":"icd10"},{"code":"M09.8","system":"icd10"},{"code":"M79.9","system":"icd10"},{"code":"M90.2","system":"icd10"},{"code":"M53.8","system":"icd10"},{"code":"M99.1","system":"icd10"},{"code":"M09","system":"icd10"},{"code":"M73.1","system":"icd10"},{"code":"M53.0","system":"icd10"},{"code":"M49.1","system":"icd10"},{"code":"M79.8","system":"icd10"},{"code":"M72.5","system":"icd10"},{"code":"M99.8","system":"icd10"},{"code":"M79.2","system":"icd10"},{"code":"M99.9","system":"icd10"},{"code":"M79.4","system":"icd10"},{"code":"M25.0","system":"icd10"},{"code":"M90.1","system":"icd10"},{"code":"M90.5","system":"icd10"},{"code":"M14.3","system":"icd10"},{"code":"M90.8","system":"icd10"},{"code":"M82.8","system":"icd10"},{"code":"M53.2","system":"icd10"},{"code":"M90","system":"icd10"},{"code":"M53.1","system":"icd10"},{"code":"M03.6","system":"icd10"},{"code":"M63.8","system":"icd10"},{"code":"M99.0","system":"icd10"},{"code":"M73","system":"icd10"},{"code":"M14.1","system":"icd10"},{"code":"M25.2","system":"icd10"},{"code":"M99.4","system":"icd10"},{"code":"M53.3","system":"icd10"},{"code":"M25.9","system":"icd10"},{"code":"M84.3","system":"icd10"},{"code":"M25.3","system":"icd10"},{"code":"M63.0","system":"icd10"},{"code":"M63.3","system":"icd10"},{"code":"M14.8","system":"icd10"},{"code":"M73.0","system":"icd10"},{"code":"M63.1","system":"icd10"},{"code":"M24.8","system":"icd10"},{"code":"M79.6","system":"icd10"},{"code":"M49.2","system":"icd10"},{"code":"M13.1","system":"icd10"},{"code":"M25.5","system":"icd10"},{"code":"M25.1","system":"icd10"},{"code":"M71.5","system":"icd10"},{"code":"M14","system":"icd10"},{"code":"M14.2","system":"icd10"},{"code":"M79.3","system":"icd10"},{"code":"M49","system":"icd10"},{"code":"M77.8","system":"icd10"},{"code":"M53.9","system":"icd10"},{"code":"M25","system":"icd10"},{"code":"M63.2","system":"icd10"},{"code":"M82","system":"icd10"},{"code":"M12.8","system":"icd10"},{"code":"M14.0","system":"icd10"},{"code":"M25.6","system":"icd10"},{"code":"M99","system":"icd10"},{"code":"M25.8","system":"icd10"},{"code":"M99.2","system":"icd10"},{"code":"M53","system":"icd10"},{"code":"M90.4","system":"icd10"},{"code":"M25.7","system":"icd10"},{"code":"M90.7","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-musculoskeletal-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-musculoskeletal-system-classif---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-musculoskeletal-system-classif---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-musculoskeletal-system-classif---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
