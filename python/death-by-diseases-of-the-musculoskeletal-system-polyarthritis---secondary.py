# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"M00.0","system":"icd10"},{"code":"M05","system":"icd10"},{"code":"M08.2","system":"icd10"},{"code":"M08.4","system":"icd10"},{"code":"M00","system":"icd10"},{"code":"M13.8","system":"icd10"},{"code":"M06.1","system":"icd10"},{"code":"M08","system":"icd10"},{"code":"M07.1","system":"icd10"},{"code":"M05.8","system":"icd10"},{"code":"M08.9","system":"icd10"},{"code":"M06.8","system":"icd10"},{"code":"M08.0","system":"icd10"},{"code":"M06.2","system":"icd10"},{"code":"M13","system":"icd10"},{"code":"M13.0","system":"icd10"},{"code":"M06","system":"icd10"},{"code":"M00.2","system":"icd10"},{"code":"M06.9","system":"icd10"},{"code":"M05.9","system":"icd10"},{"code":"M05.0","system":"icd10"},{"code":"M13.9","system":"icd10"},{"code":"M05.1","system":"icd10"},{"code":"M00.1","system":"icd10"},{"code":"M00.9","system":"icd10"},{"code":"M06.3","system":"icd10"},{"code":"M06.4","system":"icd10"},{"code":"M05.2","system":"icd10"},{"code":"M06.0","system":"icd10"},{"code":"M08.8","system":"icd10"},{"code":"M08.3","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-musculoskeletal-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-musculoskeletal-system-polyarthritis---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-musculoskeletal-system-polyarthritis---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-musculoskeletal-system-polyarthritis---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
