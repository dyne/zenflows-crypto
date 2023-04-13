# SPDX-License-Identifier: AGPL-3.0-or-later
# Copyright (C) 2022-2023 Dyne.org foundation <foundation@dyne.org>.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# example graphql with most allowed characters used

v_keyring='{"bitcoin_public_key":"ukQvpps4nhSthRf1FLsEQGnYoZDYUJkfYY8Fr6wNgC41","ecdh_public_key":"NNnAfK9c2A8QJ2oNXPvy6779DdLXS6HYv9aBUGvKjFpLAAexTr46JyooXo6vdYHw7x5veYAxrHLiHkb4pcH1LFMu","eddsa_public_key":"BmW1a6x43P4Rae9B4hS67PhHTCUShXAGy4K8tQtUfa8L","ethereum_address":"4152bf951c86ba52cec089eae22cec506cd8b874","keyring":{"bitcoin":"KxDiAHPio8igFegwt6yX94vHywxYcApUxknEnqPHoLhh5qNuSozW","ecdh":"gHMNRNJrKavz/cqSus4qcIex/+z/5uZVStccaYpVXCY=","eddsa":"EmDKWxH78WxKzJpUvsC6RWVRDWeB4q8AceooYf7uVaRv","ethereum":"e43de93b08b950652cf154da16b3659f40709a8fd3831f2bbb6e5c054c348a7e","reflow":"whNys7dhBwmeFCaunYcqvuTCZg+rX+Sbhsylt6QuSvQ="},"reflow_public_key":"AX8cmFkKLcmMGYb6YfnqAVDgRAa5tiX4XSfzvKordckZguU7ZVQTWf95x9VnenwgBcyJgniVNKQDSkodhrfGc3z3BzDfUcFEMEJhcinkrFayPq2G51Cx85bFQqfUw9DgUK12dgGP7Utout9CdqdEr2nCqmBJ25UGcpsQbjRF2edbLQTx7r6tkghpgopQUepMDnpGJXU8m8vADB5dxyhZsSNjWoH28QDTCyiRsfeV2a4w8ACGpvPb2ZjDPqZw1AVa9BcG2b","seed":"arrow story season about lucky wedding weird vast verify route churn rally"}'

v_pubkey='{"eddsa_public_key":"BmW1a6x43P4Rae9B4hS67PhHTCUShXAGy4K8tQtUfa8L"}'

v_gqlsigned='{"eddsa_signature":"/iQGPGejtTiGTOpGSAlbV3yMoCXZZ4ybjYkxK57e7AQjt6NaSssXfhUKp2wYqFNt2oFLBi/Ue/N3vC463cjlBQ==","gql":"bXV0YXRpb257Y3JlYXRlRWNvbm9taWNFdmVudChldmVudDp7YWN0aW9uOiJwcm9kdWNlInByb3ZpZGVyOiIwMUZXTjEyWFg3VEpYMUFGRjVLQTRXUE5OOSIjYm9icmVjZWl2ZXI6IjAxRldOMTJYWDdUSlgxQUZGNUtBNFdQTk45IiNib2JvdXRwdXRPZjoiMDFGV04xMzZTUERNS1dXRjIzU1dRWlJNNUYiI2hhcnZlc3RpbmdhcHBsZXNwcm9jZXNzcmVzb3VyY2VDb25mb3Jtc1RvOiIwMUZXTjEzNlk0Wlo3SzlGMzE0SFE3TUtSRyIjYXBwbGVyZXNvdXJjZVF1YW50aXR5OntoYXNOdW1lcmljYWxWYWx1ZTo1MGhhc1VuaXQ6IjAxRldOMTM2UzVWUENDUjNCM1RHWURZRVk5IiNraWxvZ3JhbX1hdExvY2F0aW9uOiIwMUZXTjEzNlpBUFE1RU5CRjNGWjc5OTM1RCIjYm9iJ3NmYXJtaGFzUG9pbnRJblRpbWU6IjIwMjItMDEtMDJUMDM6MDQ6MDVaIn1uZXdJbnZlbnRvcmllZFJlc291cmNlOntuYW1lOiJib2Inc2FwcGxlcyJub3RlOiJib2Inc2RlbGlzaGFwcGxlcyJ0cmFja2luZ0lkZW50aWZpZXI6ImxvdDEyMyJjdXJyZW50TG9jYXRpb246IjAxRldOMTM2WkFQUTVFTkJGM0ZaNzk5MzVEIiNib2Inc2Zhcm1zdGFnZToiMDFGV04xMzZYMTgzRE00M0NUV1hFU05XQUIiI2ZyZXNofSl7ZWNvbm9taWNFdmVudHtpZGFjdGlvbntpZH1wcm92aWRlcntpZH1yZWNlaXZlcntpZH1vdXRwdXRPZntpZH1yZXNvdXJjZUNvbmZvcm1zVG97aWR9cmVzb3VyY2VRdWFudGl0eXtoYXNOdW1lcmljYWxWYWx1ZWhhc1VuaXR7aWR9fWF0TG9jYXRpb257aWR9aGFzUG9pbnRJblRpbWV9ZWNvbm9taWNSZXNvdXJjZXsjdGhpc2lzdGhlbmV3bHktY3JlYXRlZHJlc291cmNlaWRuYW1lbm90ZXRyYWNraW5nSWRlbnRpZmllcnN0YWdle2lkfWN1cnJlbnRMb2NhdGlvbntpZH1jb25mb3Jtc1Rve2lkfXByaW1hcnlBY2NvdW50YWJsZXtpZH1jdXN0b2RpYW57aWR9YWNjb3VudGluZ1F1YW50aXR5e2hhc051bWVyaWNhbFZhbHVlaGFzVW5pdHtpZH19b25oYW5kUXVhbnRpdHl7aGFzTnVtZXJpY2FsVmFsdWVoYXNVbml0e2lkfX19fX0=","hash":"c500c14caa5bff14b0f869b310c5e98ac01b26b09a943c878ce40b97f5f394f9"}'

v_gql_query_signed='{"eddsa_signature":"yyGpoPYg27iULN6yw4mpqVLr26/GdpfVPyJkPabqlIaJ5tuXwNm2jWnUpKmlNnmO0xdZ9n16k2IOaGWp1mOZAw==","gql":"cXVlcnkoJGZpcnN0OkludCwkYWZ0ZXI6SUQsJGxhc3Q6SW50LCRiZWZvcmU6SUQsJGZpbHRlcjpFY29ub21pY1Jlc291cmNlRmlsdGVyUGFyYW1zKXtlY29ub21pY1Jlc291cmNlcyhmaXJzdDokZmlyc3QsYWZ0ZXI6JGFmdGVyLGJlZm9yZTokYmVmb3JlLGxhc3Q6JGxhc3QsZmlsdGVyOiRmaWx0ZXIpe3BhZ2VJbmZve3N0YXJ0Q3Vyc29yZW5kQ3Vyc29yaGFzUHJldmlvdXNQYWdlaGFzTmV4dFBhZ2V0b3RhbENvdW50cGFnZUxpbWl0fWVkZ2Vze2N1cnNvcm5vZGV7Y29uZm9ybXNUb3tpZG5hbWV9Y3VycmVudExvY2F0aW9ue2lkbmFtZW1hcHBhYmxlQWRkcmVzc31pZG5hbWVub3RlbWV0YWRhdGFva2h2cmVwb3ZlcnNpb25saWNlbnNvcmxpY2Vuc2VwcmltYXJ5QWNjb3VudGFibGV7aWRuYW1lbm90ZX1jdXN0b2RpYW57aWRuYW1lbm90ZX1hY2NvdW50aW5nUXVhbnRpdHl7aGFzVW5pdHtpZGxhYmVsc3ltYm9sfWhhc051bWVyaWNhbFZhbHVlfW9uaGFuZFF1YW50aXR5e2hhc1VuaXR7aWRsYWJlbHN5bWJvbH1oYXNOdW1lcmljYWxWYWx1ZX19fX19e3ZhcmlhYmxlczp7bGFzdDoxMCxmaWx0ZXI6e3ByaW1hcnlBY2NvdW50YWJsZTpbIjA2MUtGRTFBQURYTkRZVFhSWVRHMDA3QTE0Il19fX0=","hash":"d48385f8692ae2a96573595f5386ab77a795d2c2dc3eb233e7fac1b5b0126766"}'

gql=`mktemp`
gqljson=`mktemp`
cat <<EOF > ${gql}
mutation {
  createEconomicEvent(
    event: {
      action: "produce"
      provider: "01FWN12XX7TJX1AFF5KA4WPNN9" # bob
      receiver: "01FWN12XX7TJX1AFF5KA4WPNN9" # bob
      outputOf: "01FWN136SPDMKWWF23SWQZRM5F" # harvesting apples process
      resourceConformsTo: "01FWN136Y4ZZ7K9F314HQ7MKRG" # apple
      resourceQuantity: {
        hasNumericalValue: 50
        hasUnit: "01FWN136S5VPCCR3B3TGYDYEY9" # kilogram
      }
      atLocation: "01FWN136ZAPQ5ENBF3FZ79935D" # bob's farm
      hasPointInTime: "2022-01-02T03:04:05Z"
    }
    newInventoriedResource: {
      name: "bob's apples"
      note: "bob's delish apples"
      trackingIdentifier: "lot 123"
      currentLocation: "01FWN136ZAPQ5ENBF3FZ79935D" # bob's farm
      stage: "01FWN136X183DM43CTWXESNWAB" # fresh
    }
  ) {
    economicEvent {
      id
      action {id}
      provider {id}
      receiver {id}
      outputOf {id}
      resourceConformsTo {id}
      resourceQuantity {
        hasNumericalValue
        hasUnit {id}
      }
      atLocation {id}
      hasPointInTime
    }
    economicResource { # this is the newly-created resource
      id
      name
      note
      trackingIdentifier
      stage {id}
      currentLocation {id}
      conformsTo {id}
      primaryAccountable {id}
      custodian {id}
      accountingQuantity {
        hasNumericalValue
        hasUnit {id}
      }
      onhandQuantity {
        hasNumericalValue
        hasUnit {id}
      }
    }
  }
}
EOF


gql64=`mktemp`
cat ${gql} | base64 -w0 > ${gql64}

cat <<EOF > ${gqljson}
{"gql":"`cat ${gql64}`"}
EOF

gql2json() {
	local gql=`mktemp`
	local gql64=`mktemp`
	cat > $gql
	cat ${gql} | base64 -w0 > ${gql64}
	cat <<EOF
{"gql":"`cat ${gql64}`"}
EOF
	# clean vectors
	rm -f ${gql} ${gql64}
}

gql_mutation=`mktemp`
cat <<EOF | gql2json > ${gql_mutation}
mutation {
  createEconomicEvent(
    event: {
      action: "produce"
      provider: "01FWN12XX7TJX1AFF5KA4WPNN9" # bob
      receiver: "01FWN12XX7TJX1AFF5KA4WPNN9" # bob
      outputOf: "01FWN136SPDMKWWF23SWQZRM5F" # harvesting apples process
      resourceConformsTo: "01FWN136Y4ZZ7K9F314HQ7MKRG" # apple
      resourceQuantity: {
        hasNumericalValue: 50
        hasUnit: "01FWN136S5VPCCR3B3TGYDYEY9" # kilogram
      }
      atLocation: "01FWN136ZAPQ5ENBF3FZ79935D" # bob's farm
      hasPointInTime: "2022-01-02T03:04:05Z"
    }
    newInventoriedResource: {
      name: "bob's apples"
      note: "bob's delish apples"
      trackingIdentifier: "lot 123"
      currentLocation: "01FWN136ZAPQ5ENBF3FZ79935D" # bob's farm
      stage: "01FWN136X183DM43CTWXESNWAB" # fresh
    }
  ) {
    economicEvent {
      id
      action {id}
      provider {id}
      receiver {id}
      outputOf {id}
      resourceConformsTo {id}
      resourceQuantity {
        hasNumericalValue
        hasUnit {id}
      }
      atLocation {id}
      hasPointInTime
    }
    economicResource { # this is the newly-created resource
      id
      name
      note
      trackingIdentifier
      stage {id}
      currentLocation {id}
      conformsTo {id}
      primaryAccountable {id}
      custodian {id}
      accountingQuantity {
        hasNumericalValue
        hasUnit {id}
      }
      onhandQuantity {
        hasNumericalValue
        hasUnit {id}
      }
    }
  }
}
EOF

gql_query=`mktemp`

echo 'query($first: Int, $after: ID, $last: Int, $before: ID, $filter: EconomicResourceFilterParams) {
  economicResources(first: $first, after: $after, before: $before, last: $last, filter: $filter) {
    pageInfo {
      startCursor
      endCursor
      hasPreviousPage
      hasNextPage
      totalCount
      pageLimit
    }
    edges {
      cursor
      node {
        conformsTo {
          id
          name
        }
        currentLocation {id name mappableAddress}
        id
        name
        note
        metadata
        okhv
        repo
        version
        licensor
        license
        primaryAccountable {id name note}
        custodian {id name note}
        accountingQuantity {hasUnit{id label symbol} hasNumericalValue}
        onhandQuantity {hasUnit{id label symbol} hasNumericalValue}
      }
    }
  }
}
{ variables: { last: 10, filter: { primaryAccountable: ["061KFE1AADXNDYTXRYTG007A14"]}}}' | gql2json > ${gql_query}
