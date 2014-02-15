(defmodule neo4j
  (export all))

(defun make-url ()
  (make-url '"localhost"))

(defun make-url (host)
  (make-url host '"7474"))

(defun make-url (host port)
  (make-url '"http" host '"7474"))

(defun make-url (scheme host port)
  (++ scheme '"://" host '":" port))

(defun get-url (url path)
  (: lfe-rest-client-util get-json-body
    (: lfe-rest-client-sync get
      (++ url path))))

(defun get-service-root (url)
  (get-url url '"/db/data"))

(defun get-property-keys (url)
  (get-url url '"/db/data/propertykeys"))

(defun get-relationship-types (url)
  (get-url url '"/db/data/relationship/types"))

(defun get-labels (url)
  (get-url url '"/db/data/labels"))

;; XXX move this into lfe-rest-client-util
(defun display-data (data)
  (: io format '"~p~n" (list data)))