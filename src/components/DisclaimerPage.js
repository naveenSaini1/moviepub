"use client"
import { AlertTriangle, Shield, Eye, Scale } from "lucide-react"

export default function DisclaimerPage() {
  return (
    <div className="min-h-screen bg-gray-900 text-gray-100 py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-3xl mx-auto">
        <header className="text-center mb-12">
          <h1 className="text-4xl font-bold text-orange-500 mb-4">Disclaimer</h1>
          <p className="text-xl text-gray-300">Please read this disclaimer carefully before using our service</p>
        </header>

        <main className="space-y-8">
          <Section icon={<AlertTriangle className="w-8 h-8 text-orange-500" />} title="Content Disclaimer">
            <p>
              The movies and information provided on this website are for general informational purposes only. We do not
              guarantee the accuracy, completeness, or usefulness of this information. Any reliance you place on such
              information is strictly at your own risk.
            </p>
          </Section>

          <Section icon={<Shield className="w-8 h-8 text-orange-500" />} title="Copyright Notice">
            <p>
              All content on this website, including but not limited to text, graphics, logos, images, and software, is
              the property of our website or its content suppliers and is protected by international copyright laws. The
              compilation of all content on this site is the exclusive property of our website.
            </p>
          </Section>

          <Section icon={<Eye className="w-8 h-8 text-orange-500" />} title="User Responsibility">
            <p>
              By using this website, you agree to use the content solely for personal, non-commercial purposes. You also
              agree not to engage in the use, copying, or distribution of any of the content other than expressly
              permitted herein, including any use, copying, or distribution of content of third parties obtained through
              the website for any commercial purposes.
            </p>
          </Section>

          <Section icon={<Scale className="w-8 h-8 text-orange-500" />} title="Limitation of Liability">
            <p>
              In no event shall our website, or its suppliers, be liable for any damages (including, without limitation,
              damages for loss of data or profit, or due to business interruption) arising out of the use or inability
              to use the materials on our website, even if our website or an authorized representative has been notified
              orally or in writing of the possibility of such damage.
            </p>
          </Section>
        </main>

        <footer className="mt-12 text-center text-sm text-gray-400">
          <p>Last updated: {new Date().toLocaleDateString()}</p>
          <p>By using our service, you acknowledge that you have read and understood this disclaimer.</p>
        </footer>
      </div>
    </div>
  )
}

function Section({ icon, title, children }) {
  return (
    <section className="bg-gray-800 rounded-lg p-6 shadow-lg">
      <div className="flex items-center mb-4">
        {icon}
        <h2 className="text-2xl font-semibold ml-4">{title}</h2>
      </div>
      <div className="text-gray-300">{children}</div>
    </section>
  )
}

