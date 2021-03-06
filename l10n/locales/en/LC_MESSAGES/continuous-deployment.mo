??          T               ?   M  ?   #   ?  ?   ?  (   ?  w   ?  ?   $  ?  ?  M  ?  #   ?  ?   ?  (   v  w   ?  ?      Although, since unfortunately we can't trigger a Netlify build based on a `Travis-CI`_ build status we have to add a `custom script`_ to the `Travis-CI configuration`_. Since we only want to deploy the site if the project passes the continuous integration process we need to use `Netlify's restore deploy feature`_ on build failures. Continuous Deployment using Netlify It is possible for their to be a brief window where the failed `Netlify`_ build is published before the restore deploy call is run. This is a PR that caused a failed build. Using `PR #3`_ as an example, you can see it has a **Details** link to the `latest netlify build specific to that PR`_. `Netlify`_ allows you to trigger a build, and more importantly a deployment, of a sphinx project based on `GitHub commits`_ and `pull requests`_. Thus creating the continuous deployment portion of the pipeline. Project-Id-Version: Continuous Sphinx 1.0.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-06-15 23:27-0500
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.3
 Although, since unfortunately we can't trigger a Netlify build based on a `Travis-CI`_ build status we have to add a `custom script`_ to the `Travis-CI configuration`_. Since we only want to deploy the site if the project passes the continuous integration process we need to use `Netlify's restore deploy feature`_ on build failures. Continuous Deployment using Netlify It is possible for their to be a brief window where the failed `Netlify`_ build is published before the restore deploy call is run. This is a PR that caused a failed build. Using `PR #3`_ as an example, you can see it has a **Details** link to the `latest netlify build specific to that PR`_. `Netlify`_ allows you to trigger a build, and more importantly a deployment, of a sphinx project based on `GitHub commits`_ and `pull requests`_. Thus creating the continuous deployment portion of the pipeline. 